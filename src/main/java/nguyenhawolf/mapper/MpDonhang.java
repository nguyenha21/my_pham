package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.DonHang;

public class MpDonhang implements RowMapper<DonHang>{
	@Override
	public DonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
		DonHang donHang = new DonHang();
		donHang.setMaDh(rs.getInt("ma_dh"));
        donHang.setIdKhachHang(rs.getInt("id_khach_hang"));
        donHang.setGhiChu(rs.getString("ghi_chu"));
        donHang.setPhiShip(rs.getInt("phi_ship"));
        donHang.setTongTien(rs.getInt("tong_tien"));
        donHang.setNgayTao(rs.getTimestamp("ngay_tao"));
        donHang.setNgayShip(rs.getTimestamp("ngay_ship"));
        donHang.setNgayShipHt(rs.getTimestamp("ngay_ship_ht"));
        donHang.setNgayHuy(rs.getTimestamp("ngay_huy"));
        donHang.setTrangThai(rs.getInt("trang_thai"));
        
        
        donHang.setMaSp(rs.getInt("masp"));
        donHang.setSoLuong(rs.getInt("soluong"));
        donHang.setGiaTien(rs.getInt("giatien"));
        
        donHang.setId(rs.getInt("id"));
        donHang.setHoVaTen(rs.getString("hovaten"));
        donHang.setGioiTinh(rs.getInt("gioitinh"));
        donHang.setNgaySinh(rs.getDate("ngaysinh"));
        donHang.setSdt(rs.getString("sdt"));
        donHang.setDiaChi(rs.getString("diachi"));
        donHang.setEmail(rs.getString("email"));


        return donHang;
	}

}
