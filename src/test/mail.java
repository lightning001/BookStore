package test;

import javax.mail.Session;

import util.EmailUtil;

public class mail {
	public static void main(String[] args) {
		Session session = EmailUtil.getSession();
		EmailUtil.sendEmail(session, "wintersoul1212@gmail.com", "[test]", "Email test");
	}
}
