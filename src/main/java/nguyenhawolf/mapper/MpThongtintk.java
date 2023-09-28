package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ThongTinTk;

public class MpThongtintk implements RowMapper<ThongTinTk> {
	@Override
	public ThongTinTk mapRow(ResultSet rs, int rowNum) throws SQLException {
		ThongTinTk thongTinTK = new ThongTinTk();
		thongTinTK.setStt(rs.getInt("stt"));
		thongTinTK.setId(rs.getInt("id"));
		thongTinTK.setHoVaTen(rs.getString("ho_va_ten"));
		thongTinTK.setGioiTinh(rs.getInt("gioi_tinh"));
		thongTinTK.setNgaySinh(rs.getDate("ngay_sinh"));
		thongTinTK.setSdt(rs.getString("sdt"));
		thongTinTK.setDiaChi(rs.getString("dia_chi"));
		thongTinTK.setEmail(rs.getString("email"));
		return thongTinTK;
	}

}
