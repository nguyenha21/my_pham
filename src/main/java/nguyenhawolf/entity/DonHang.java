package nguyenhawolf.entity;

import java.util.Date;

public class DonHang {
	private int maDh;
	private int idKhachHang;
	private String ghiChu;
	private int phiShip;
	private int tongTien;
	private Date ngayTao;
	private Date ngayShip;
	private Date ngayShipHt;
	private Date ngayHuy;
	private int trangThai;
	public DonHang() {
		super();
	}
	public int getMaDh() {
		return maDh;
	}
	public void setMaDh(int maDh) {
		this.maDh = maDh;
	}
	public int getIdKhachHang() {
		return idKhachHang;
	}
	public void setIdKhachHang(int idKhachHang) {
		this.idKhachHang = idKhachHang;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public int getPhiShip() {
		return phiShip;
	}
	public void setPhiShip(int phiShip) {
		this.phiShip = phiShip;
	}
	public int getTongTien() {
		return tongTien;
	}
	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	public Date getNgayShip() {
		return ngayShip;
	}
	public void setNgayShip(Date ngayShip) {
		this.ngayShip = ngayShip;
	}
	public Date getNgayShipHt() {
		return ngayShipHt;
	}
	public void setNgayShipHt(Date ngayShipHt) {
		this.ngayShipHt = ngayShipHt;
	}
	public Date getNgayHuy() {
		return ngayHuy;
	}
	public void setNgayHuy(Date ngayHuy) {
		this.ngayHuy = ngayHuy;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

}
