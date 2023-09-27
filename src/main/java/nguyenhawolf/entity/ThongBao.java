package nguyenhawolf.entity;

import java.util.Date;

public class ThongBao {
	private int stt;
	private String thongBao;
	private Integer idTk;
	private Integer maSp;
	private Integer maDh;
	private Date dateTao;
	private int trangThai;
	public int getStt() {
		return stt;
	}
	public void setStt(int stt) {
		this.stt = stt;
	}
	public String getThongBao() {
		return thongBao;
	}
	public void setThongBao(String thongBao) {
		this.thongBao = thongBao;
	}
	public Integer getIdTk() {
		return idTk;
	}
	public void setIdTk(Integer idTk) {
		this.idTk = idTk;
	}
	public Integer getMaSp() {
		return maSp;
	}
	public void setMaSp(Integer maSp) {
		this.maSp = maSp;
	}
	public Integer getMaDh() {
		return maDh;
	}
	public void setMaDh(Integer maDh) {
		this.maDh = maDh;
	}
	public Date getDateTao() {
		return dateTao;
	}
	public void setDateTao(Date dateTao) {
		this.dateTao = dateTao;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	public ThongBao() {
		super();
	}
}
