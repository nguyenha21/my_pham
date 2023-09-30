package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.SanPham;

public class MpSanpham implements RowMapper<SanPham> {

	@Override
	public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		SanPham sanPham = new SanPham();
		sanPham.setMa_Sp(rs.getInt("ma_sp"));
		sanPham.setTen_Sp(rs.getString("ten_sp"));
		sanPham.setImg(rs.getString("img"));
		sanPham.setDate_Tao(rs.getTimestamp("date_tao"));
		sanPham.setGia_Ban(rs.getInt("gia_ban"));
		sanPham.setGia_Thi_Truong(rs.getInt("gia_thi_truong"));
		sanPham.setMa_Th(rs.getInt("ma_th"));
		sanPham.setSl_Trong_Kho(rs.getInt("sl_trong_kho"));
		sanPham.setMa_Pl(rs.getInt("ma_pl"));
		sanPham.setHien_Thi(rs.getBoolean("hien_thi"));
		sanPham.setSl_Da_Ban(rs.getInt("sl_da_ban"));
		return sanPham;
	}
	

}
