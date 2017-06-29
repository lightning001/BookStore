package model;

public class CartUser {
	private int id;
    private String userName;
    private int idSP;
	private String name;
	private String HSX;
	private String urlImages;
	private int price;
	public CartUser(int id, String userName, int idSP, String name, String hSX, String urlImages, int price) {
		super();
		this.id = id;
		this.userName = userName;
		this.idSP = idSP;
		this.name = name;
		HSX = hSX;
		this.urlImages = urlImages;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getIdSP() {
		return idSP;
	}
	public void setIdSP(int idSP) {
		this.idSP = idSP;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHSX() {
		return HSX;
	}
	public void setHSX(String hSX) {
		HSX = hSX;
	}
	public String getUrlImages() {
		return urlImages;
	}
	public void setUrlImages(String urlImages) {
		this.urlImages = urlImages;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	
}