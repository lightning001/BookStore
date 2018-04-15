package dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;

import entity.Author;
import util.HibernateUtils;

public class AuthorDAO extends ObjectDAO implements Serializable {
	private static final long serialVersionUID = 109093590483148431L;

	public static List<Author> getAllAuthor() {
		List<Author> authors = new ArrayList<Author>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Author.class.getName();
			Query<Author> query = session.createQuery(hql);
			authors = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return authors;
	}

	public static Author getAuthor(int id) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Author author = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Author.class.getName() + " e where e.accountId =:id";
			Query<Author> query = session.createQuery(hql);
			query.setParameter("id", id);
			query.setMaxResults(1);
			author = query.getSingleResult();
			session.getTransaction().commit();
			return author;
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
			Criteria criteriaCount = session.createCriteria(Author.class);
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

	public static List<Author> paging(int page, int pageSize) {

		List<Author> listAccount = new ArrayList<Author>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();

		try {
			session.getTransaction().begin();
			String hql = "from " + Author.class.getName() + " e order by e.accountId asc";
			Query<Author> query = session.createQuery(hql);
			query.setFirstResult((page - 1) * pageSize);
			query.setMaxResults(pageSize);
			listAccount = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return listAccount;
	}

}
