package nguyenhawolf.entity;

import java.util.Date;

public class HeThongCH {
	private int stt;
	private String diaChi;
	private String sdt;
	private boolean hienThi;
	private Date ngayTao;
	public HeThongCH() {
		super();
	}
	public int getStt() {
		return stt;
	}
	public void setStt(int stt) {
		this.stt = stt;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public boolean isHienThi() {
		return hienThi;
	}
	public void setHienThi(boolean hienThi) {
		this.hienThi = hienThi;
	}
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	

}
