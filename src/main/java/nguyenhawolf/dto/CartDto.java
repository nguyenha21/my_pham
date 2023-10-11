package nguyenhawolf.dto;

import nguyenhawolf.entity.SanPham;

public class CartDto {

	private int quanty;
	private double totalPrice;
	private SanPham sanPham;
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public SanPham getProduct() {
		return sanPham;
	}
	public void setProduct(SanPham product2) {
		this.sanPham = product2;
	}
	public CartDto(int quanty, double totalPrice, SanPham product) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.sanPham = product;
	}
	public CartDto() {
		super();
	}

	

}
