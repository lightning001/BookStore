package dao;

import java.io.Serializable;

import org.hibernate.Session;

import util.HibernateUtils;

public abstract class ObjectDAO implements Serializable {
	public static final int USER = 0;
	public static final int ADMINISTATOR = 1;
	public static final int MODERATOR = 2;
	public static final int PUBLISHER = 3;
	private static final long serialVersionUID = -6424612624533256413L;

	public static boolean update(Object object) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.update(object);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return false;
		}
	}

	public static boolean insert(Object object) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(object);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return false;
		}
	}

	public static boolean delete(Object object) {
		Session session = HibernateUtils.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.delete(object);
			session.getTransaction().commit();
			session.clear();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return false;
		}
	}
}
