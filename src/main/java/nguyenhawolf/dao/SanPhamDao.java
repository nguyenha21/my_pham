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
	
	public List<SanPham> GetSanphamMoive() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham WHERE sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 AND date_tao >= DATE_SUB(NOW(), INTERVAL 5000 DAY) "
				+ "ORDER BY date_tao DESC LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}
	public List<SanPham> GetSanphamBanchay() {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM sanpham "
				+ "WHERE sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 "
				+ "ORDER BY sl_da_ban DESC LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}
	public List<SanPham> GetSanphamCungloai(String ma_pl) {
		List<SanPham> list = new ArrayList<SanPham>();
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT sanpham.* ");
		varname1.append("FROM `sanpham` ");
		varname1.append("INNER JOIN phanloaisp ON sanpham.ma_pl = phanloaisp.ma_pl ");
		varname1.append("WHERE phanloaisp.ma_pl = "+ma_pl+" AND sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 ");
		varname1.append("ORDER BY RAND() ");
		varname1.append("LIMIT 8");
		list = _jdbcTemplate.query(varname1.toString(), new MpSanpham());
		return list;
	}
	public List<SanPham> GetSanphamDexuat() {
		List<SanPham> list = new ArrayList<SanPham>();
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT sanpham.* ");
		varname1.append("FROM `sanpham` ");
		varname1.append("WHERE sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 ");
		varname1.append("ORDER BY `sanpham`.`sl_da_ban` DESC ");
		varname1.append("LIMIT 8");
		list = _jdbcTemplate.query(varname1.toString(), new MpSanpham());
		return list;
	}
	public List<SanPham> GetSanphamDanhmuc(int ma_dm) {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "SELECT * FROM `sanpham` "
				+ "INNER JOIN phanloaisp ON sanpham.ma_pl = phanloaisp.ma_pl "
				+ "WHERE phanloaisp.ma_dm = "+ma_dm+" AND sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 "
				+ "ORDER BY RAND () LIMIT 12";
		list = _jdbcTemplate.query(sql, new MpSanpham());
		return list;
	}
	
	

}
