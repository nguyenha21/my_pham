package nguyenhawolf.dto;

import java.util.Date;

public class ProductsDto {
	//bảng sản phẩm
	private int ma_Sp;
	private String ten_Sp;
	private String img;
	private Date date_Tao;
	private int gia_Ban;
	private int gia_Thi_Truong;
	private int ma_Th;
	private int sl_Trong_Kho;
	private int ma_Pl;
	private boolean hien_Thi;
	private int sl_Da_Ban;
	//bảng giới thiệu sản phẩm
	private int stt;
    private String khaiQuat;
    private String noiDung;
    private float danhGia;
    //bảng thương hiệu
    private int maTh;
    private String tenThuongHieu;
    //bảng phân loại sản phẩm
	private int maPl;
    private String tenLoaiSp;
    private int maDm;
	public int getMa_Sp() {
		return ma_Sp;
	}
	public void setMa_Sp(int ma_Sp) {
		this.ma_Sp = ma_Sp;
	}
	public String getTen_Sp() {
		return ten_Sp;
	}
	public void setTen_Sp(String ten_Sp) {
		this.ten_Sp = ten_Sp;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getDate_Tao() {
		return date_Tao;
	}
	public void setDate_Tao(Date date_Tao) {
		this.date_Tao = date_Tao;
	}
	public int getGia_Ban() {
		return gia_Ban;
	}
	public void setGia_Ban(int gia_Ban) {
		this.gia_Ban = gia_Ban;
	}
	public int getGia_Thi_Truong() {
		return gia_Thi_Truong;
	}
	public void setGia_Thi_Truong(int gia_Thi_Truong) {
		this.gia_Thi_Truong = gia_Thi_Truong;
	}
	public int getMa_Th() {
		return ma_Th;
	}
	public void setMa_Th(int ma_Th) {
		this.ma_Th = ma_Th;
	}
	public int getSl_Trong_Kho() {
		return sl_Trong_Kho;
	}
	public void setSl_Trong_Kho(int sl_Trong_Kho) {
		this.sl_Trong_Kho = sl_Trong_Kho;
	}
	public int getMa_Pl() {
		return ma_Pl;
	}
	public void setMa_Pl(int ma_Pl) {
		this.ma_Pl = ma_Pl;
	}
	public boolean isHien_Thi() {
		return hien_Thi;
	}
	public void setHien_Thi(boolean hien_Thi) {
		this.hien_Thi = hien_Thi;
	}
	public int getSl_Da_Ban() {
		return sl_Da_Ban;
	}
	public void setSl_Da_Ban(int sl_Da_Ban) {
		this.sl_Da_Ban = sl_Da_Ban;
	}
	public int getStt() {
		return stt;
	}
	public void setStt(int stt) {
		this.stt = stt;
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
	public int getMaTh() {
		return maTh;
	}
	public void setMaTh(int maTh) {
		this.maTh = maTh;
	}
	public String getTenThuongHieu() {
		return tenThuongHieu;
	}
	public void setTenThuongHieu(String tenThuongHieu) {
		this.tenThuongHieu = tenThuongHieu;
	}
	public int getMaPl() {
		return maPl;
	}
	public void setMaPl(int maPl) {
		this.maPl = maPl;
	}
	public String getTenLoaiSp() {
		return tenLoaiSp;
	}
	public void setTenLoaiSp(String tenLoaiSp) {
		this.tenLoaiSp = tenLoaiSp;
	}
	public int getMaDm() {
		return maDm;
	}
	public void setMaDm(int maDm) {
		this.maDm = maDm;
	}
	public ProductsDto() {
		super();
	}
    
}
