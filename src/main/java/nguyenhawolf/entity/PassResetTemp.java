package nguyenhawolf.entity;

import java.util.Date;

public class PassResetTemp {

	private int stt;
	private String email;
	private String keyKt;
	private Date expDate;
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
	public String getKeyKt() {
		return keyKt;
	}
	public void setKeyKt(String keyKt) {
		this.keyKt = keyKt;
	}
	public Date getExpDate() {
		return expDate;
	}
	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}
	public PassResetTemp() {
		super();
	}
}
