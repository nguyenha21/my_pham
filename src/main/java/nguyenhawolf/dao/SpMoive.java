package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import nguyenhawolf.entity.SanPham;
import nguyenhawolf.mapper.MpSanpham;

public class SpMoive {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public List<SanPham> GetSanphamngaunhien() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham ORDER BY RAND () ";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}
}
