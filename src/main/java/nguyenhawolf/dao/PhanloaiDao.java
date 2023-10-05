package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.PhanLoaiSp;
import nguyenhawolf.mapper.MpPhanloaiSP;

@Repository
public class PhanloaiDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<PhanLoaiSp> GetPhanloaiByID(int ma_pl) {
		List<PhanLoaiSp> list = new ArrayList<PhanLoaiSp>();
		String sql = "SELECT * FROM phanloaisp WHERE ma_pl = "+ma_pl;
		list = _jdbcTemplate.query(sql, new MpPhanloaiSP());
		return list;
	}
	
	
	

}
