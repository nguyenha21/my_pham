package nguyenhawolf.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.dto.CategorysDto;
import nguyenhawolf.dto.MpCategorys;

@Repository
public class SanphamPhanloaiDao {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	private final boolean YES = true;
	private final boolean NO = false;
	
	private StringBuffer SqlString() {
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT sanpham.*,phanloaisp.*");
		varname1.append(" FROM `sanpham` ");
		varname1.append(" INNER JOIN phanloaisp ON sanpham.ma_pl = phanloaisp.ma_pl ");
		return varname1;
	}

	private String SqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer sql = SqlString();
		
		return sql.toString();
	}
	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append(" WHERE phanloaisp.ma_pl = "+id+" AND sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 ");
		return sql;
	}
	
	private String SqlProductsByPaginate(int id,int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append(" LIMIT "+start+","+ totalPage);
		return sql.toString();
	}


	public List<CategorysDto> GetDataProducts() {
		String sql = SqlProducts(YES, NO);
		List<CategorysDto> listProducts = _jdbcTemplate.query(sql, new MpCategorys());
		return listProducts;
	}
	public List<CategorysDto> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<CategorysDto> listProducts = _jdbcTemplate.query(sql, new MpCategorys());
		return listProducts;
	}
	public List<CategorysDto> GetDataProductsByPaginate(int id,int start,int totalPage) {
		String sql = SqlProductsByPaginate(id, start,  totalPage);
		List<CategorysDto> listProducts = _jdbcTemplate.query(sql, new MpCategorys());
		return listProducts;
	}

}
