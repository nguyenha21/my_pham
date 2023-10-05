package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.ThuongHieu;
import nguyenhawolf.mapper.MpThuonghieu;

@Repository
public class ThuonghieuDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public List<ThuongHieu> GetThuonghieu() {
		List<ThuongHieu> list = new ArrayList<ThuongHieu>();
		String sql = "SELECT * FROM thuonghieu";
		list = _jdbcTemplate.query(sql, new MpThuonghieu());
		return list;
	}
	public List<ThuongHieu> GetThuonghieuByID(int ma_th) {
		List<ThuongHieu> list = new ArrayList<ThuongHieu>();
		String sql = "SELECT * FROM thuonghieu WHERE ma_th = "+ma_th;
		list = _jdbcTemplate.query(sql, new MpThuonghieu());
		return list;
	}
}
