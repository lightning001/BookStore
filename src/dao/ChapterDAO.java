package dao;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.Book;
import entity.Chapter;
import util.HibernateUtils;

public class ChapterDAO extends ObjectDAO {
	private static final long serialVersionUID = 1L;

	public static Chapter getChapter(int id) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Chapter chapter = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.book.bookId =:id";
			Query<Chapter> query = session.createQuery(hql);
			query.setParameter("id", id);
			query.setMaxResults(1);
			chapter = query.getSingleResult();
			session.getTransaction().commit();
			return chapter;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	public static Chapter getChapter(String slug) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Chapter chapter = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.slug =:slug";
			Query<Chapter> query = session.createQuery(hql);
			query.setParameter("slug", slug);
			query.setMaxResults(1);
			chapter = query.getSingleResult();
			session.getTransaction().commit();
			return chapter;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}
}
