package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ThuongHieu;

public class MpThuonghieu implements RowMapper<ThuongHieu> {
	@Override
	public ThuongHieu mapRow(ResultSet rs, int rowNum) throws SQLException {
		ThuongHieu thuongHieu = new ThuongHieu();
		thuongHieu.setMaTh(rs.getInt("ma_th"));
		thuongHieu.setTenThuongHieu(rs.getString("ten_thuong_hieu"));
		thuongHieu.setImg(rs.getString("img"));
		return thuongHieu;
	}

}
