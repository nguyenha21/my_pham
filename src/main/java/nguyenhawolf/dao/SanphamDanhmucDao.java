package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.SanPham;
import nguyenhawolf.mapper.MpSanpham;

@Repository
public class SanphamDanhmucDao {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<SanPham> GetSanphamDanhmuc() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham ORDER BY date_tao DESC LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}

}
