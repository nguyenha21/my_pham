package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.ThongTinTk;
import nguyenhawolf.mapper.MpThongtintk;

@Repository
public class ThongtinTKDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<ThongTinTk> GetThongTinTK(int id) {
		List<ThongTinTk> list = new ArrayList<ThongTinTk>();
		String sql = "SELECT * FROM sanpham WHERE sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 AND date_tao >= DATE_SUB(NOW(), INTERVAL 5000 DAY) "
				+ "ORDER BY date_tao DESC LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpThongtintk());
		return list;
	}
	public List<ThongTinTk> CheckTK(String tk, String mk) {
		List<ThongTinTk> list = new ArrayList<ThongTinTk>();
		String sql = "SELECT * FROM sanpham "
				+ "WHERE sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 "
				+ "ORDER BY sl_da_ban DESC LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpThongtintk());
		return list;
	}
	
	
	
	

}
