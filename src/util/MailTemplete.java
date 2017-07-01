package util;

public class MailTemplete {
	public static String checkBook(String link) {
		StringBuilder sb = new StringBuilder();
		sb.append("<h3>Book Story đã được kiểm duyệt</h3><br><hr><br>");
		sb.append("Bạn hãy vào trang sau để đọc lại: ");
		sb.append("<a href=\"" + link + "\"><font color=\"blue\">" + link + "</font></a><br>");
		return sb.toString();
	}

	public static String postChapter(String book, String link, String chapter) {
		StringBuilder sb = new StringBuilder();
		sb.append("<h3>Chương truyện mới</h3><br><hr><br>");
		sb.append("Truyện <strong>" + book + "</strong> bạn theo dõi đã có chapter mới: <strong> Chapter " + chapter
				+ "</strong><br>");
		sb.append("Đọc truyện tại ");
		sb.append("<a href=\"" + link + "\"><font color=\"blue\">" + link + "</font></a><br>");
		return sb.toString();
	}
}
