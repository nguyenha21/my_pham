package nguyenhawolf.entity;

import java.util.Date;

public class TKAdmin {
	private int id;
	private String tenTk;
	private String mk;
	private Date ngayTao;
	private String hoVaTen;
	private String email;
	public TKAdmin() {
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
	public String getHoVaTen() {
		return hoVaTen;
	}
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
