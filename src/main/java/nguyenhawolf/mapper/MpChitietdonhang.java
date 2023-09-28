package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ChiTietDonHang;

public class MpChitietdonhang implements RowMapper<ChiTietDonHang> {
@Override
public ChiTietDonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
	ChiTietDonHang chiTietDonHang= new ChiTietDonHang();
	chiTietDonHang.setStt(rs.getInt("stt"));
    chiTietDonHang.setMaSp(rs.getInt("ma_sp"));
	chiTietDonHang.setSoLuong(rs.getInt("so_luong"));
	chiTietDonHang.setMaDh(rs.getInt("ma_dh"));
	chiTietDonHang.setGiaTien(rs.getInt("gia_tien"));
    return chiTietDonHang;
}

}
