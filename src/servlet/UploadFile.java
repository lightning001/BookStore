package servlet;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadFile extends HttpServlet implements Serializable {

	private static final long serialVersionUID = 5276417670315492804L;
	// upload settings
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 10;
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 15;
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 20;

	HttpServletRequest request;
	HttpServletResponse response;
	String uploadPath;

	public UploadFile(HttpServletRequest request, HttpServletResponse response, String uploadPath)
			throws ServletException, IOException {
		super();
		this.uploadPath = uploadPath;
		this.request = request;
		this.response = response;
		this.response.setContentType("text/html;charset=UTF-8");
		this.request.setCharacterEncoding("UTF-8");
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		upload(uploadPath);
	}

	public Hashtable<Object, Object> upload(String uploadPath) {
		if (!ServletFileUpload.isMultipartContent(request)) {
			try {
				request.setAttribute("error", "Error: Form must has enctype=multipart/form-data.");
				request.setAttribute("link", "admin/dashboard");
				request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}

		// configures upload settings
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// sets memory threshold - beyond which files are stored in disk
		factory.setSizeThreshold(MEMORY_THRESHOLD);
		// sets temporary location to store files
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		ServletFileUpload upload = new ServletFileUpload(factory);

		// sets maximum size of upload file
		upload.setFileSizeMax(MAX_FILE_SIZE);

		// sets maximum size of request (include file + form data)
		upload.setSizeMax(MAX_REQUEST_SIZE);
		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}

		try {
			// parses the request's content to extract file data
			List<FileItem> items = upload.parseRequest(request);

			Iterator<FileItem> iter = items.iterator();
			Hashtable<Object, Object> param = new Hashtable<>();
			String linkImg = "";
			if (items != null && items.size() > 0) {
				// iterates over form's fields
				while (iter.hasNext()) {
					FileItem item = (FileItem) iter.next();
					// processes only fields that are not form fields
					if (!item.isFormField()) {
						if (item.getSize() > 0) {
							String fileName = new File(item.getName()).getName();
							if (fileName != null) {
								String filePath = uploadPath + File.separator + fileName;
								File storeFile = new File(filePath);
								if(!storeFile.exists())
									storeFile.createNewFile();
								Random r = new Random();
								long num = Math.abs(r.nextLong());
								String typeFile = fileName.substring(fileName.lastIndexOf("."));
								// saves the file on disk
								item.write(storeFile);
								String newName = uploadPath + File.separator + num + typeFile;
								storeFile.renameTo(new File(newName));
								linkImg = newName.substring(newName.lastIndexOf("img") - 1);
							}
						}
					} else if (item.isFormField()) {
						param.put(item.getFieldName(), item.getString("UTF-8"));
					}
				}
				param.put("linkfileAfterUpload", linkImg);
				return param;
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				request.setAttribute("error", e);
				request.setAttribute("link", "admin/dashboard");
				request.getRequestDispatcher("/admin/error/errorpage.jsp").forward(request, response);
			} catch (ServletException | IOException e1) {
				e1.printStackTrace();
				return null;
			}
		}
		return null;
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
}
