package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import nguyenhawolf.entity.GioiThieuSanPham;
import nguyenhawolf.mapper.MpGTSP;

public class GtspDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
//	public void setJdbcTemplate(JdbcTemplate _jdbcTemplate) {
//		this._jdbcTemplate = _jdbcTemplate;
//	}
	public List<GioiThieuSanPham> GetAll() {
		List<GioiThieuSanPham> list = new ArrayList<GioiThieuSanPham>();
		String sql = "SELECT * FROM gioithieusp";
		list = _jdbcTemplate.query(sql, new MpGTSP());
		return list;
	}
}
