package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.SanPham;

public class MpSanpham implements RowMapper<SanPham> {

	@Override
	public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		SanPham sanPham = new SanPham();
		sanPham.setMaSp(rs.getInt("ma_sp"));
		sanPham.setTenSp(rs.getString("ten_sp"));
		sanPham.setDateTao(rs.getTimestamp("date_tao"));
		sanPham.setGiaBan(rs.getInt("gia_ban"));
		sanPham.setGiaThiTruong(rs.getInt("gia_thi_truong"));
		sanPham.setMaTh(rs.getInt("ma_th"));
		sanPham.setSlTrongKho(rs.getInt("sl_trong_kho"));
		sanPham.setMaPl(rs.getInt("ma_pl"));
		sanPham.setHienThi(rs.getBoolean("hien_thi"));
		sanPham.setSlDaBan(rs.getInt("sl_da_ban"));
		return sanPham;
	}
	

}
