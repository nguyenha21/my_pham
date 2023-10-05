package nguyenhawolf.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.dto.TrademarksDto;
import nguyenhawolf.dto.MpTrademarks;

@Repository
public class SanphamThuonghieuDao {

	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	private final boolean YES = true;
	private final boolean NO = false;
	
	private StringBuffer SqlString() {
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT sanpham.*,thuonghieu.*");
		varname1.append(" FROM `sanpham` ");
		varname1.append(" INNER JOIN thuonghieu ON sanpham.ma_th = thuonghieu.ma_th ");
		return varname1;
	}

	private String SqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer sql = SqlString();
		
		return sql.toString();
	}
	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append(" WHERE thuonghieu.ma_th = "+id+" AND sanpham.sl_trong_kho > 0 AND sanpham.hien_thi = 1 ");
		return sql;
	}
	
	private String SqlProductsByPaginate(int id,int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append(" LIMIT "+start+","+ totalPage);
		return sql.toString();
	}


	public List<TrademarksDto> GetDataProducts() {
		String sql = SqlProducts(YES, NO);
		List<TrademarksDto> listProducts = _jdbcTemplate.query(sql, new MpTrademarks());
		return listProducts;
	}
	public List<TrademarksDto> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<TrademarksDto> listProducts = _jdbcTemplate.query(sql, new MpTrademarks());
		return listProducts;
	}
	public List<TrademarksDto> GetDataProductsByPaginate(int id,int start,int totalPage) {
		String sql = SqlProductsByPaginate(id, start,  totalPage);
		List<TrademarksDto> listProducts = _jdbcTemplate.query(sql, new MpTrademarks());
		return listProducts;
	}

}
