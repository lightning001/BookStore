package DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;

import entity.Book;
import util.HibernateUtils;

public class BookDAO extends ObjectDAO implements Serializable {
	private static final long serialVersionUID = -6153609389710317813L;
	
	public static List<Book> getFreeBook(){
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() +" e where price = 0 order by e.likes desc";
			Query<Book> query = session.createQuery(hql);
			query.setMaxResults(10);
			book = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return book;
	}
	
	public static List<Book> getTop10BookLike(){
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() +" e order by e.likes desc";
			Query<Book> query = session.createQuery(hql);
			query.setMaxResults(10);
			book = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return book;
	}
	
	public static List<Book> getTop10BookSubcribe(){
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() +" e order by e.subcribe desc";
			Query<Book> query = session.createQuery(hql);
			query.setMaxResults(10);
			book = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return book;
	}


	public static List<Book> getAllBook() {
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName();
			Query<Book> query = session.createQuery(hql);
			book = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return book;
	}

	public static Book getBook(int id) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Book book = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.bookId =:id";
			Query<Book> query = session.createQuery(hql);
			query.setParameter("id", id);
			query.setMaxResults(1);
			book = query.getSingleResult();
			session.getTransaction().commit();
			return book;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	@SuppressWarnings("deprecation")
	public static long getPageCount(int pageSize) {
		if (pageSize == 0)
			return 0;
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		long count = 0;
		try {
			session.getTransaction().begin();
			Criteria criteriaCount = session.createCriteria(Book.class);
			criteriaCount.setProjection(Projections.rowCount());
			count = (long) criteriaCount.uniqueResult();
			session.getTransaction().commit();
			if (count % pageSize == 0) {
				count = count / pageSize;
			} else {
				count = count / pageSize + 1;
			}
		} catch (Exception e) {
			session.getTransaction().rollback();
		}
		return count;
	}

	public static List<Book> paging(int page, int pageSize) {

		List<Book> listBook = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();

		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e order by e.bookId asc";
			Query<Book> query = session.createQuery(hql);
			query.setFirstResult((page - 1) * pageSize);
			query.setMaxResults(pageSize);
			listBook = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return listBook;
	}
	
}
