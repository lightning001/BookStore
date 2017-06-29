package model;

public class Cart {
	private int idUser;
	private int idProduct;
	public Cart(int idUser, int idProduct) {
		super();
		this.idUser = idUser;
		this.idProduct = idProduct;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	

}
