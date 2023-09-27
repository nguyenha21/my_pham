package nguyenhawolf.entity;

import java.util.Date;

public class SanPham {

	private int maSp;
	private String tenSp;
	private Date dateTao;
	private int giaBan;
	private int giaThiTruong;
	private int maTh;
	private int slTrongKho;
	private int maPl;
	private boolean hienThi;
	private int slDaBan;
	public SanPham() {
		super();
	}
	public int getMaSp() {
		return maSp;
	}
	public void setMaSp(int maSp) {
		this.maSp = maSp;
	}
	public String getTenSp() {
		return tenSp;
	}
	public void setTenSp(String tenSp) {
		this.tenSp = tenSp;
	}
	public Date getDateTao() {
		return dateTao;
	}
	public void setDateTao(Date dateTao) {
		this.dateTao = dateTao;
	}
	public int getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(int giaBan) {
		this.giaBan = giaBan;
	}
	public int getGiaThiTruong() {
		return giaThiTruong;
	}
	public void setGiaThiTruong(int giaThiTruong) {
		this.giaThiTruong = giaThiTruong;
	}
	public int getMaTh() {
		return maTh;
	}
	public void setMaTh(int maTh) {
		this.maTh = maTh;
	}
	public int getSlTrongKho() {
		return slTrongKho;
	}
	public void setSlTrongKho(int slTrongKho) {
		this.slTrongKho = slTrongKho;
	}
	public int getMaPl() {
		return maPl;
	}
	public void setMaPl(int maPl) {
		this.maPl = maPl;
	}
	public boolean isHienThi() {
		return hienThi;
	}
	public void setHienThi(boolean hienThi) {
		this.hienThi = hienThi;
	}
	public int getSlDaBan() {
		return slDaBan;
	}
	public void setSlDaBan(int slDaBan) {
		this.slDaBan = slDaBan;
	}
}
