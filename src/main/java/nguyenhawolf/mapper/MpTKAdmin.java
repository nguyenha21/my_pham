package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.TKAdmin;

public class MpTKAdmin implements RowMapper<TKAdmin>{
	@Override
	public TKAdmin mapRow(ResultSet rs, int rowNum) throws SQLException {
		TKAdmin taiKhoan = new TKAdmin();
		taiKhoan.setId(rs.getInt("id"));
		taiKhoan.setTenTk(rs.getString("ten_tk"));
		taiKhoan.setMk(rs.getString("mk"));
		taiKhoan.setNgayTao(rs.getDate("ngay_tao"));
		taiKhoan.setHoVaTen(rs.getString("ho_va_ten"));
		taiKhoan.setEmail(rs.getString("email"));

        return taiKhoan;
    }

}
