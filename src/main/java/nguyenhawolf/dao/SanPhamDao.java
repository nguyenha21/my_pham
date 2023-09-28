package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.SanPham;
import nguyenhawolf.mapper.MpSanpham;

@Repository
public class SanPhamDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;

//	public void setJdbcTemplate(JdbcTemplate _jdbcTemplate) {
//		this._jdbcTemplate = _jdbcTemplate;
//	}

	public List<SanPham> GetSanpham() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}

}
