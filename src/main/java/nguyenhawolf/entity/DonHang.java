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
	
	//chi tiết đơn hàng
    private int maSp;
    private int soLuong;
    private int giaTien;
	//thông tin tài khoản
    private int id;
    private String hoVaTen;
    private int gioiTinh;
    private Date ngaySinh;
    private String sdt;
    private String diaChi;
    private String email;
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
	public int getMaSp() {
		return maSp;
	}
	public void setMaSp(int maSp) {
		this.maSp = maSp;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public int getGiaTien() {
		return giaTien;
	}
	public void setGiaTien(int giaTien) {
		this.giaTien = giaTien;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHoVaTen() {
		return hoVaTen;
	}
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	public int getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(int gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public DonHang() {
		super();
	}
	
	
	

	

}
