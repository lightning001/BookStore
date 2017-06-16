package util;

public class ParseURI {

	public static String getParam(String url) {
		String slug = null;
		String s[] = url.split("/");
		if (s.length > 0) {
			slug = s[s.length - 1];
		}
		return slug;
	}

	public static String[] getListParam(String url) {
		return url.split("/");
	}

	
}
