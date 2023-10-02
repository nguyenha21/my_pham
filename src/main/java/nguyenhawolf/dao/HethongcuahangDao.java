package nguyenhawolf.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.HeThongCH;
import nguyenhawolf.mapper.MpHethongCH;

@Repository
public class HethongcuahangDao {
	@Autowired

	public JdbcTemplate _jdbcTemplate;

	public List<HeThongCH> GetHethongcuahang() {
		String sql = "SELECT * FROM hethongch";
		return _jdbcTemplate.query(sql, new MpHethongCH());
	}

}
