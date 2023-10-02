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
	
	public List<SanPham> GetSanphamRandom() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}
	public List<SanPham> GetSanphamBanchay() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham ORDER BY sl_da_ban DESC LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}
	public List<SanPham> GetSanphamDanhmuc(int ma_dm) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham WHERE ma_Dm = ? LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}

}
