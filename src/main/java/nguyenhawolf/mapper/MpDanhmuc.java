package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.DanhMuc;

public class MpDanhmuc implements RowMapper<DanhMuc> {

	@Override
	public DanhMuc mapRow(ResultSet rs, int rowNum) throws SQLException {
		DanhMuc danhMuc= new DanhMuc();
		danhMuc.setMaDm(rs.getInt("ma_dm"));
		danhMuc.setTenDm(rs.getString("ten_dm"));

		return danhMuc;
	}

}
