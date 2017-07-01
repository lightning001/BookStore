package DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;

import entity.Category;
import util.HibernateUtils;

public class CategoryDAO extends ObjectDAO implements Serializable {
	private static final long serialVersionUID = -1512150533360333170L;

	public static List<Category> getAllCategory() {
		List<Category> category = new ArrayList<Category>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Category.class.getName() + " c order by c.categoryName asc";
			Query<Category> query = session.createQuery(hql);
			category = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return category;
	}

	public static Category getCategory(int id) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Category category = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Category.class.getName() + " e where e.categoryId =:id";
			Query<Category> query = session.createQuery(hql);
			query.setParameter("id", id);
			query.setMaxResults(1);
			category = query.getSingleResult();
			session.getTransaction().commit();
			return category;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	public static Category getCategory(String slug) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Category category = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Category.class.getName() + " e where e.slug =:slug";
			Query<Category> query = session.createQuery(hql);
			query.setParameter("slug", slug);
			query.setMaxResults(1);
			category = query.getSingleResult();
			session.getTransaction().commit();
			return category;
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
			Criteria criteriaCount = session.createCriteria(Category.class);
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

	public static List<Category> paging(int page, int pageSize) {

		List<Category> listCategory = new ArrayList<Category>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();

		try {
			session.getTransaction().begin();
			String hql = "from " + Category.class.getName() + " e order by e.categoryId asc";
			Query<Category> query = session.createQuery(hql);
			query.setFirstResult((page - 1) * pageSize);
			query.setMaxResults(pageSize);
			listCategory = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return listCategory;
	}

}
