package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.Accounts;
import entity.Author;
import entity.Book;
import entity.Chapter;
import servlet.TextFormat;
import util.HibernateUtils;

public class SearchDAO {

	public static List<Book> searchBook(String key) {
		List<Book> list = new ArrayList<>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			String slug = TextFormat.createKeyWord(key);
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.slug like '%" + slug + "%'";
			Query<Book> query = session.createQuery(hql);
			list.addAll(query.list());
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}

	public static List<Author> searchAuthor(String key) {
		List<Author> list = new ArrayList<>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Author.class.getName() + " e where e.authorName like '%" + key
					+ "%' or e.accounts.name like '%" + key + "%' ";
			Query<Author> query = session.createQuery(hql);
			list.addAll(query.list());
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}

	public static List<Accounts> searchAccount(String key) {
		List<Accounts> list = new ArrayList<>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Accounts.class.getName() + " e where e.name like '%" + key
					+ "%' or e.username like '%" + key + "%' ";
			Query<Accounts> query = session.createQuery(hql);
			list.addAll(query.list());
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}

	public static List<Chapter> searchChapter(String key) {
		List<Chapter> list = new ArrayList<>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			String slug = TextFormat.createKeyWord(key);
			session.getTransaction().begin();
			String hql = "from " + Chapter.class.getName() + " e where e.slug like '%" + slug + "%'";
			Query<Chapter> query = session.createQuery(hql);
			list.addAll(query.list());
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}

}
