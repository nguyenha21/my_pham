package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.SpKhuyenMai;

public class MpSpkhuyenmai implements RowMapper<SpKhuyenMai> {
	@Override
	public SpKhuyenMai mapRow(ResultSet rs, int rowNum) throws SQLException {
		SpKhuyenMai spKhuyenMai = new SpKhuyenMai();
		spKhuyenMai.setStt(rs.getInt("stt"));
		spKhuyenMai.setMaSp(rs.getInt("ma_sp"));
		spKhuyenMai.setGiaTriKm(rs.getInt("gia_tri_km"));
		return spKhuyenMai;
	}

}
