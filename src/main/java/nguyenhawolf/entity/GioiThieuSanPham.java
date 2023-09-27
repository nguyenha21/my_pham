package nguyenhawolf.entity;

public class GioiThieuSanPham {
	private int stt;
	private int maSP;
	private String khaiQuat;
	private String noiDung;
	private float danhGia;
	public GioiThieuSanPham() {
		super();
	}
	public int getStt() {
		return stt;
	}
	public void setStt(int stt) {
		this.stt = stt;
	}
	public int getMaSP() {
		return maSP;
	}
	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}
	public String getKhaiQuat() {
		return khaiQuat;
	}
	public void setKhaiQuat(String khaiQuat) {
		this.khaiQuat = khaiQuat;
	}
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	public float getDanhGia() {
		return danhGia;
	}
	public void setDanhGia(float danhGia) {
		this.danhGia = danhGia;
	}
}
