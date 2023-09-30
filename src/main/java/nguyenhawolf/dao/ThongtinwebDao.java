package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.ThongTinWeb;
import nguyenhawolf.mapper.MpThongtinweb;
@Repository
public class ThongtinwebDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;

	public List<ThongTinWeb> GetThongtinweb() {
		List<ThongTinWeb> list = new ArrayList<ThongTinWeb>();
		String sql = "SELECT * FROM thongtinweb";
		list = _jdbcTemplate.query(sql, new MpThongtinweb());
		return list;
	}
}
