package DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.Manager;
import util.HibernateUtils;

public class ManagerDAO extends ObjectDAO implements Serializable {

	private static final long serialVersionUID = -6085850183754444184L;

	public static Manager login(String email, String password) {
		Manager manager = null;
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Manager.class.getName()
					+ " e where e.accounts.email=:email and e.accounts.passwords=:password";
			Query<Manager> query = session.createQuery(hql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			query.setMaxResults(1);
			manager = query.uniqueResult();
			session.getTransaction().commit();
			if (manager != null)
				if (manager.getAccounts().getIsLock() == true) {
					return null;
				} else
					return manager;
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	public static List<Manager> getAllAccount() {
		List<Manager> managers = new ArrayList<Manager>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Manager.class.getName();
			Query<Manager> query = session.createQuery(hql);
			managers = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return managers;
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
	public static List<Manager> getAllManagerLevel(int level) {
		List<Manager> accounts = new ArrayList<Manager>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Manager.class.getName() + " e where e.accounts.levels=:level";
			Query<Manager> query = session.createQuery(hql);
			query.setParameter("level", level);
			accounts = query.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return accounts;
	}

	public static Manager getManager(int id) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Manager manager = null;
		try {
			session.getTransaction().begin();
			String hql = "from " + Manager.class.getName() + " e where e.accounts.accountId =:id";
			Query<Manager> query = session.createQuery(hql);
			query.setParameter("id", id);
			query.setMaxResults(1);
			manager = query.getSingleResult();
			session.getTransaction().commit();
			return manager;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	/**
	 * Tham so dau vao cho levelAccount:<br>
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
			String hql = "select count(accounts.accountId) from " + Manager.class.getName()
					+ " e where e.accounts.levels=:level";
			Query<Long> query = session.createQuery(hql);
			query.setParameter("level", levelAccount);
			query.setMaxResults(1);
			count = (long) query.uniqueResult();
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

	public static List<Manager> paging(int page, int pageSize, int level) {

		List<Manager> listAccount = new ArrayList<Manager>();
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();

		try {
			session.getTransaction().begin();
			String hql = "from " + Manager.class.getName()
					+ " e where e.accounts.levels=:level order by e.accounts.accountId asc";
			Query<Manager> query = session.createQuery(hql);
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

}
