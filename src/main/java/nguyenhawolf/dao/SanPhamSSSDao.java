package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.dto.MpProducts;
import nguyenhawolf.dto.ProductsDto;

@Repository
public class SanPhamSSSDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public List<ProductsDto> GetSanphamChitiet(String id) {
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT sanpham.*,gioithieusp.*,thuonghieu.*,phanloaisp.* ");
		varname1.append("FROM `sanpham` ");
		varname1.append("INNER JOIN gioithieusp ON sanpham.ma_sp = gioithieusp.ma_sp ");
		varname1.append("INNER JOIN thuonghieu ON sanpham.ma_th = thuonghieu.ma_th ");
		varname1.append("INNER JOIN phanloaisp ON sanpham.ma_pl = phanloaisp.ma_pl ");
		varname1.append("WHERE sanpham.ma_sp= "+id);
		list = _jdbcTemplate.query(varname1.toString(), new MpProducts());
		return list;
	}

}
