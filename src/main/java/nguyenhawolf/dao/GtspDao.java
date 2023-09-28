package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.GTSP;
import nguyenhawolf.mapper.MpGTSP;
@Repository
public class GtspDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
//	public void setJdbcTemplate(JdbcTemplate _jdbcTemplate) {
//		this._jdbcTemplate = _jdbcTemplate;
//	}
	public List<GTSP> GetAll() {
		List<GTSP> list = new ArrayList<GTSP>();
		String sql = "SELECT * FROM gioithieusp";
		list = _jdbcTemplate.query(sql, new MpGTSP());
		return list;
	}
}
