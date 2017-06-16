package test;

import DAO.StatisticDAO;
import util.HibernateUtils;

/**
 * Created by congp on 26-Apr-17.
 */
public class Test {

	public static void main(String[] args) {
//		Date date = new Date(System.currentTimeMillis());
//		System.out.println(StatisticDAO.getStatisTicOnMonth(date));
		System.out.println(StatisticDAO.statisticPeriod("3/2017", "8/2017"));
		HibernateUtils.shutdown();
	}
}
