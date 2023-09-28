package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.TaiKhoan;

public class MpTaikhoan implements RowMapper<TaiKhoan>{
	@Override
	public TaiKhoan mapRow(ResultSet rs, int rowNum) throws SQLException {
        TaiKhoan taiKhoan = new TaiKhoan();
        taiKhoan.setId(rs.getInt("id"));
        taiKhoan.setTenTk(rs.getString("ten_tk"));
        taiKhoan.setMk(rs.getString("mk"));
        taiKhoan.setNgayTao(rs.getTimestamp("ngay_tao"));
        taiKhoan.setHoatDong(rs.getBoolean("hoat_dong"));
        taiKhoan.setCap(rs.getInt("cap"));
        return taiKhoan;
    }

}
