package DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.Accounts;
import util.HibernateUtils;

public class AccountDAO extends ObjectDAO implements Serializable {
	private static final long serialVersionUID = 4908536999390863695L;

	public static Accounts login(String email, String password) {
		Accounts accounts = null;
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Accounts.class.getName()
					+ " e where e.email=:email and e.passwords=:password and e.isLock=:isLock and e.isActive=:isActive";
			Query<Accounts> query = session.createQuery(hql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			query.setParameter("isActive", true);
			query.setParameter("isLock", false);
			accounts = query.uniqueResult();
			session.getTransaction().commit();
			return accounts;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	/**
	 * 
	 * @return Tat ca user trong database
	 */
	public static List<Accounts> getAllAccount() {
		List<Accounts> accounts = new ArrayList<Accounts>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Accounts.class.getName();
			Query<Accounts> query = session.createQuery(hql);
			// query.setMaxResults(12);
			accounts = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return accounts;
	}

	/**
	 * Tham so dau vao:<br>
	 * <b>USER/AUTHOR</b> = 0;<br>
	 * 
	 * <b>ADMINISTATOR</b> = 1;<br>
	 * 
	 * <b>MODERATOR</b> = 2;<br>
	 * 
	 * <b>PUBLISHER</b> = 3;<br>
	 * 
	 * @param level
	 * @return lay danh sach cac user theo level
	 * 
	 */
	public static List<Accounts> getAllUsersLevel(int level) {
		List<Accounts> accounts = new ArrayList<Accounts>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Accounts.class.getName() + " e where e.levels=:level";
			Query<Accounts> query = session.createQuery(hql);
			query.setParameter("level", level);
			accounts = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return accounts;
	}

	/**
	 * 
	 * @param id
	 * @return Account theo id duoc truyen vao
	 */
	public static Accounts getAccount(int id) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Accounts account = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Accounts.class.getName() + " e where e.accountId =:id";
			Query<Accounts> query = session.createQuery(hql);
			query.setParameter("id", id);
			query.setMaxResults(1);
			account = query.getSingleResult();
			session.getTransaction().commit();
			return account;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	/**
	 * Tham so dau vao cho levelAccount:<br>
	 * <b>USER/AUTHOR</b> = 0;<br>
	 * 
	 * <b>ADMINISTATOR</b> = 1;<br>
	 * 
	 * <b>MODERATOR</b> = 2;<br>
	 * 
	 * <b>PUBLISHER</b> = 3;<br>
	 * 
	 * Neu khong nho thi co the dung tham so trong lop ObjectDAO.
	 * 
	 * @param itemQuantity:
	 *            so luong phan tu toi da co the hien thi cho 1 trang
	 * @param level:
	 *            Cap do Account muon lay
	 * @return so luong trang co the phan trang. <br>
	 * 
	 *         Do co phan cap user nen ko dung Criteria duoc.
	 */
	public static long getPageCount(int itemQuantity, int levelAccount) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		long count = 0;
		try {
			session.getTransaction().begin();
			String hql = "select count(accountId) from " + Accounts.class.getName() + " e where e.levels=:level";
			Query<Long> query = session.createQuery(hql);
			query.setParameter("level", levelAccount);
			query.setMaxResults(1);
			count = query.uniqueResult();
			session.getTransaction().commit();
			if (count % itemQuantity == 0) {
				count = count / itemQuantity;
			} else {
				count = count / itemQuantity + 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return count;
	}

	public static List<Accounts> paging(int page, int pageSize, int level) {

		List<Accounts> listAccount = new ArrayList<Accounts>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();

		try {
			session.getTransaction().begin();
			String hql = "from " + Accounts.class.getName() + " e where e.levels=:level order by e.accountId asc";
			Query<Accounts> query = session.createQuery(hql);
			query.setParameter("level", level);
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

	public static boolean lockUnlock(int id) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Accounts account = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Accounts.class.getName() + " e where e.accountId =:id";
			Query<Accounts> query = session.createQuery(hql);
			query.setParameter("id", id);
			query.setMaxResults(1);
			account = query.getSingleResult();
			if (account.getIsLock() == true) {
				account.setIsLock(false);
			} else {
				account.setIsLock(true);
			}
			session.update(account);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return false;
		}
	}
}
