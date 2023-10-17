package nguyenhawolf.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.TKAdmin;
import nguyenhawolf.mapper.MpTKAdmin;

@Repository
public class TaiKhoanDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<TKAdmin> GetAll() {
		List<TKAdmin> list = new ArrayList<TKAdmin>();
		String sql = "SELECT * FROM sanpham WHERE sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 AND date_tao >= DATE_SUB(NOW(), INTERVAL 5000 DAY) "
				+ "ORDER BY date_tao DESC LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpTKAdmin());
		return list;
	}
	public List<String> CheckTK(String tk) {
		String sql = "SELECT tk_admin.mk FROM `tk_admin` WHERE tk_admin.ten_tk = '"+tk+"'";
		List<String> list = _jdbcTemplate.query(sql, (resultSet, i) -> resultSet.getString("mk"));
		return list;
	}
	public int AddTK(TKAdmin tkAdmin) {
		Date currentDate = new Date();
		Timestamp timestamp = new Timestamp(currentDate.getTime());
		String sql = "INSERT INTO `tk_admin`( `ten_tk`, `mk`, `ngay_tao`, `ho_va_ten`, `email`) \r\n"
				+ "VALUES ('"+tkAdmin.getTenTk()+"','"+tkAdmin.getMk()+"','"+timestamp+"','"+tkAdmin.getHoVaTen()+"','"+tkAdmin.getEmail()+"')";
		int insert= _jdbcTemplate.update(sql);
		return insert;
	}
	
	public List<TKAdmin> CheckTKTT(String tk) {
		List<TKAdmin> list = new ArrayList<TKAdmin>();
		String sql = "SELECT * FROM `tk_admin` WHERE tk_admin.ten_tk = '"+tk+"'";
		list = _jdbcTemplate.query(sql, new MpTKAdmin());
		return list;
	}
	public TKAdmin GetPass(TKAdmin tkAdmin) {
		String sql = "SELECT * FROM `tk_admin` WHERE tk_admin.ten_tk = '"+tkAdmin.getTenTk()+"'";
		TKAdmin result = _jdbcTemplate.queryForObject(sql, new MpTKAdmin());
		return result;
	}
	
	
	

}
