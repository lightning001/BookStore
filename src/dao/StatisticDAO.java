package dao;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.Statistic;
import util.HibernateUtils;

public class StatisticDAO {
	static Comparator<Statistic> comp = new Comparator<Statistic>() {
		@Override
		public int compare(Statistic s1, Statistic s2) {
			if (s1.getYear() > s2.getYear())
				return 1;
			else if (s1.getYear() < s2.getYear())
				return -1;
			else if (s1.getYear() == s2.getYear()) {
				if (s1.getMonth() < s2.getMonth())
					return -1;
				if (s2.getYear() > s2.getMonth())
					return 1;
				return 0;
			}
			return 0;
		}
	};

	public static List<Statistic> getAllStatistic() {
		List<Statistic> statistic = null;
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Statistic.class.getName() + " e order by e.year asc, e.month asc";
			Query<Statistic> query = session.createQuery(hql);
			statistic = query.list();
			session.getTransaction().commit();
			return statistic;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	@SuppressWarnings("deprecation")
	public static Statistic getStatisTicOnMonth(Date date) {
		Statistic statistic = null;
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Statistic.class.getName() + " e where e.month=:month and e.year=:year";
			Query<Statistic> query = session.createQuery(hql);
			query.setParameter("month", date.getMonth() + 1);
			query.setParameter("year", date.getYear() + 1900);
			query.setMaxResults(1);
			statistic = query.uniqueResult();
			session.getTransaction().commit();
			return statistic;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	public static List<Statistic> statistic6MonthToday() {
		List<Statistic> statistic = null;
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Statistic.class.getName() + " e order by e.year desc, e.month desc";
			Query<Statistic> query = session.createQuery(hql);
			query.setMaxResults(6);
			statistic = query.list();
			statistic.sort(comp);
			session.getTransaction().commit();
			return statistic;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}

	public static boolean check(int month1, int year1, int month2, int year2, int m, int y) {
		if (year1 < year2) {
			if (y == year1) {
				if (m < month1)
					return false;
				else
					return true;
			} else if (y == year2) {
				if (m > month2)
					return false;
				else
					return true;
			} else if (y > year1 && y < year2) {
				return true;
			}
		} else if (year1 == year2) {
			if (month1 <= y && y <= month2)
				return true;
			else
				return false;
		}
		return false;
	}

	/**
	 * d1, d2 phải định dạng theo kiểu (mm/yyyy) hoặc (m/yyyy)
	 * 
	 * @param d1
	 * @param d2
	 * @return
	 */
	public static List<Statistic> statisticPeriod(String d1, String d2) {
		List<Statistic> statistic = new ArrayList<Statistic>();

		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		try {
			session.getTransaction().begin();
			String hql = "from " + Statistic.class.getName();
			Query<Statistic> query = session.createQuery(hql);
			List<Statistic> tmp = new ArrayList<Statistic>();
			tmp = query.list();
			if (tmp != null && tmp.size() > 0) {
				String[] s1 = d1.split("/");
				int month1 = Integer.parseInt(s1[0]);
				int year1 = Integer.parseInt(s1[1]);
				String[] s2 = d2.split("/");
				int month2 = Integer.parseInt(s2[0]);
				int year2 = Integer.parseInt(s2[1]);
				for (Statistic st : tmp) {
					if (check(month1, year1, month2, year2, st.getMonth(), st.getYear()))
						statistic.add(st);
				}
				statistic.sort(comp);
				session.getTransaction().commit();
				return statistic;
			} else
				return null;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
			return null;
		}
	}
}
