package entity;

import java.util.List;

public class Statistic implements java.io.Serializable {

	private static final long serialVersionUID = -3484851374615016329L;
	private int id;
	private int month;
	private int year;
	private int createaccount;
	private int writebook;
	private int writechapter;
	private int readbook;
	private int likebook;
	private int exchanges;

	public Statistic() {
	}

	public Statistic(int id) {
		this.id = id;
	}

	public Statistic(int id, int month, int year) {
		this.id = id;
		this.month = month;
		this.year = year;
	}

	public Statistic(int month, int year) {
		this.month = month;
		this.year = year;
	}

	public Statistic(int month, int year, int createaccount, int writebook, int writechapter, int readbook,
			int likebook, int exchanges) {
		this.month = month;
		this.year = year;
		this.createaccount = createaccount;
		this.writebook = writebook;
		this.writechapter = writechapter;
		this.readbook = readbook;
		this.likebook = likebook;
		this.exchanges = exchanges;
	}

	public Statistic(int id, int month, int year, int createaccount, int writebook, int writechapter, int readbook,
			int likebook, int exchanges) {
		this.id = id;
		this.month = month;
		this.year = year;
		this.createaccount = createaccount;
		this.writebook = writebook;
		this.writechapter = writechapter;
		this.readbook = readbook;
		this.likebook = likebook;
		this.exchanges = exchanges;
	}

	public int getId() {
		return id;
	}

	public int getMonth() {
		return month;
	}

	public int getYear() {
		return year;
	}

	public int getCreateaccount() {
		return createaccount;
	}

	public int getWritebook() {
		return writebook;
	}

	public int getWritechapter() {
		return writechapter;
	}

	public int getReadbook() {
		return readbook;
	}

	public int getLikebook() {
		return likebook;
	}

	public int getExchanges() {
		return exchanges;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public void setCreateaccount(int createaccount) {
		this.createaccount = createaccount;
	}

	public void setWritebook(int writebook) {
		this.writebook = writebook;
	}

	public void setWritechapter(int writechapter) {
		this.writechapter = writechapter;
	}

	public void setReadbook(int readbook) {
		this.readbook = readbook;
	}

	public void setLikebook(int likebook) {
		this.likebook = likebook;
	}

	public void setExchanges(int exchanges) {
		this.exchanges = exchanges;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Statistic [");
		builder.append(id);
		builder.append(", month: ");
		builder.append(month);
		builder.append(", year: ");
		builder.append(year);
		builder.append(", createaccount: ");
		builder.append(createaccount);
		builder.append(", writebook: ");
		builder.append(writebook);
		builder.append(", writechapter: ");
		builder.append(writechapter);
		builder.append(", readbook: ");
		builder.append(readbook);
		builder.append(", likebook: ");
		builder.append(likebook);
		builder.append(", exchanges: ");
		builder.append(exchanges);
		builder.append("]");
		return builder.toString();
	}

	public static  String createChart(List<Statistic> list) {
		StringBuilder s = new StringBuilder();
		s.append("{ \nlabels : [");
		for (int i = 0; i < list.size() - 1; i++)
			s.append("\"" + (list.get(i).getMonth()) + "/" + (list.get(i).getYear()) + "\",");
		s.append("\"" + (list.get(list.size() - 1).getMonth()) + "/" + (list.get(list.size() - 1).getYear()) + "\"");
		s.append("],\n");
		s.append("datasets: [");
		s.append("{ label : \"New User\",\n");
		s.append("data : [ " + list.get(0).getCreateaccount());

		for (int i = 1; i < list.size(); i++) {
			s.append(", " + list.get(i).getCreateaccount());
		}
		s.append("],\n");
		 s.append("fill: false,\n");
//		s.append("backgroundColor : window.chartColors.red,\n");
		s.append("borderColor : 'rgba(255, 159, 64, 1)',\n");
		s.append("borderWidth : 1},\n");

		// ---------------------------------------------------

		s.append("{ label : \"Write Book\",\n");
		s.append("data : [" + list.get(0).getWritebook());

		for (int i = 1; i < list.size(); i++) {
			s.append(", " + list.get(i).getWritebook());
		}
		s.append("],\n");
		s.append("fill: false,\n");
		// s.append("backgroundColor : window.chartColors.lavender,\n");
		s.append("borderColor : 'rgba(153, 102, 255, 1)',\n");
		s.append("borderWidth : 1},\n");

		// ---------------------------------------------------

		s.append("{ label : \"Write Chapter\",\n");
		s.append("data : [ " + list.get(0).getWritechapter());

		for (int i = 1; i < list.size(); i++) {
			s.append(", " + list.get(i).getWritechapter());
		}
		s.append("],\n");
		s.append("fill: false,\n");
		// s.append("backgroundColor : window.chartColors.gray,\n");
		s.append("borderColor : 'rgba(45,196,150,1)',\n");
		s.append("borderWidth : 1},\n");

		// ---------------------------------------------------

		s.append("{ label : \"Read(thousand)\",\n");
		s.append("data : [ " + list.get(0).getReadbook() / 1000);

		for (int i = 1; i < list.size(); i++) {
			s.append(", " + (list.get(i).getReadbook() / 1000));
		}
		s.append("],\n");
		s.append("fill: false,\n");
		// s.append("backgroundColor : window.chartColors.coral,\n");
		s.append("borderColor : 'rgba(255, 99, 132, 1)',\n");
		s.append("borderWidth : 1},\n");

		// ---------------------------------------------------

		s.append("{ label : \"Like\",\n");
		s.append("data : [ " + list.get(0).getLikebook());

		for (int i = 1; i < list.size(); i++) {
			s.append(", " + list.get(i).getLikebook());
		}
		s.append("],\n");
		s.append("fill: false,\n");
		// s.append("backgroundColor : window.chartColors.oceanblue,\n");
		s.append("borderColor : 'rgba(54, 162, 235, 1)',\n");
		s.append("borderWidth : 1},\n");

		// ---------------------------------------------------

		s.append("{ label : \"Exchange\",\n");
		s.append("data : [ " + list.get(0).getExchanges());

		for (int i = 1; i < list.size(); i++) {
			s.append(", " + list.get(i).getExchanges());
		}
		s.append("],\n");
		s.append("fill: false,\n");
		// s.append("backgroundColor : window.chartColors.green,\n");
		s.append("borderColor : 'rgba(75, 192, 192, 1)',\n");
		s.append("borderWidth : 1}]}");

		return s.toString();
	}
}
