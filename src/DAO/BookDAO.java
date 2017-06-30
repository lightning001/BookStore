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

	public static List<Book> getFreeBook() {
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where price = 0 order by e.likes desc";
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

	public static List<Book> getCheckBook() {
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.checked=false order by e.postDate desc";
			Query<Book> query = session.createQuery(hql);
			book = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return book;
	}

	public static List<Book> getNewBook(int quantity) {
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.checked=true order by e.postDate desc";
			Query<Book> query = session.createQuery(hql);
			query.setMaxResults(quantity);
			book = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return book;
	}

	public static List<Book> getTop10BookLike() {
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e order by e.likes desc";
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

	public static List<Book> getTop10BookSubcribe() {
		List<Book> book = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e order by e.subcribe desc";
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
			String hql = "from " + Book.class.getName() + " e join e.chapters c order by e.postDate desc, c.order desc";
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

	public static Book getBook(String slug) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Book book = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.slug =:slug";
			Query<Book> query = session.createQuery(hql);
			query.setParameter("slug", slug);
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
			String hql = "from " + Book.class.getName() + " e order by e.bookId desc";
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

	public static List<Book> getLikeLib(int accountId) {
		List<Book> accounts = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName()
					+ " e join e.libraries l where e.accountId=:id and e.id = l.accounts.accountId";
			Query<Book> query = session.createQuery(hql);
			query.setParameter("id", accountId);
			accounts = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return accounts;
	}

	public static List<Book> getListAgeDown(int age) {
		List<Book> listBook = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();

		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.age<" + age + " order by e.bookName asc";
			Query<Book> query = session.createQuery(hql);
			listBook = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return listBook;
	}

	public static List<Book> getListAgeUp(int age) {
		List<Book> listBook = new ArrayList<Book>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();

		try {
			session.getTransaction().begin();
			String hql = "from " + Book.class.getName() + " e where e.age>" + age + " order by e.bookName asc";
			Query<Book> query = session.createQuery(hql);
			listBook = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return listBook;
	}

	private static List<Book> listBook;
	private static List<Book> likelistBook;

	// TẠO RA DANH SÁCH SAN PHẨM TRONG GIỎ HÀNG
	public static List<Book> addListBookt() {
		if (listBook == null)
			listBook = new ArrayList<Book>();

		return listBook;

	}

	// TẠO RA DANH SÁCH YÊU THÍCH
	public static List<Book> likeListBook() {
		if (likelistBook == null)
			likelistBook = new ArrayList<Book>();

		return likelistBook;

	}

	// HÀM BỎ THÍCH 1 BOOK TRONG DS
	public static List<Book> unLikeBook(int id) {
		for (int s = 0; s < likelistBook.size(); s++) {
			if (likelistBook.get(s).getBookId() == id) {
				likelistBook.remove(s);
			}
		}
		return likelistBook;

	}

	// HÀM XÓA SẢN PHẨM TRONG GIỎ HÀNG
	public static List<Book> delete(int id) {
		for (int s = 0; s < addListBookt().size(); s++) {
			if (addListBookt().get(s).getBookId() == id) {
				addListBookt().remove(s);
			}
		}
		return addListBookt();

	}

}
