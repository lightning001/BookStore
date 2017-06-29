package test;

import DAO.AccountDAO;
import DAO.ManagerDAO;
import entity.Accounts;
import entity.Manager;
import util.HibernateUtils;

public class Test {

	public static void main(String[] args) {
		// Date date = new Date(System.currentTimeMillis());
		// System.out.println(StatisticDAO.getStatisTicOnMonth(date));
		// System.out.println(StatisticDAO.statisticPeriod("3/2017", "8/2017"));
		// System.out.println(SearchDAO.searchBook("la"));
		Accounts a = AccountDAO.getAccount(4);
		a.setLevels(3);
		Manager m = new Manager(a);
		System.out.println(m);
		System.out.println(ManagerDAO.update(m));
		HibernateUtils.shutdown();
	}
}
