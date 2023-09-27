package nguyenhawolf.entity;

import java.util.Date;

public class EmailKhuyenMai {
	private int stt;
	private String email;
	private Date ngayTao;
	public EmailKhuyenMai() {
		super();
	}
	public int getStt() {
		return stt;
	}
	public void setStt(int stt) {
		this.stt = stt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	

}
