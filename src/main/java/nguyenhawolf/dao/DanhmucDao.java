package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.DanhMuc;
import nguyenhawolf.mapper.MpDanhmuc;

@Repository
public class DanhmucDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<DanhMuc> GetDanhmucByID(int ma_dm) {
		List<DanhMuc> list = new ArrayList<DanhMuc>();
		String sql = "SELECT * FROM danhmuc WHERE ma_dm = "+ma_dm;
		list = _jdbcTemplate.query(sql, new MpDanhmuc());
		return list;
	}
	
	
	

}
