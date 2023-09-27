package nguyenhawolf.entity;

import java.util.Date;

public class TaiKhoan {

	private int id;
	private String tenTk;
	private String mk;
	private Date ngayTao;
	private boolean hoatDong;
	private int cap;
	public TaiKhoan() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenTk() {
		return tenTk;
	}
	public void setTenTk(String tenTk) {
		this.tenTk = tenTk;
	}
	public String getMk() {
		return mk;
	}
	public void setMk(String mk) {
		this.mk = mk;
	}
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	public boolean isHoatDong() {
		return hoatDong;
	}
	public void setHoatDong(boolean hoatDong) {
		this.hoatDong = hoatDong;
	}
	public int getCap() {
		return cap;
	}
	public void setCap(int cap) {
		this.cap = cap;
	}

}
