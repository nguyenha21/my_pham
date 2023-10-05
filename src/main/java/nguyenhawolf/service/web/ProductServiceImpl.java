package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.ImgBsDao;
import nguyenhawolf.dao.SanPhamDao;
import nguyenhawolf.dao.SanPhamSSSDao;
import nguyenhawolf.dto.ProductsDto;
import nguyenhawolf.entity.ImgSpBs;
import nguyenhawolf.entity.SanPham;
@Service
public class ProductServiceImpl {
	@Autowired
	private SanPhamSSSDao sanPhamSSSDao;
	@Autowired
	private SanPhamDao sanPhamDao ;
	@Autowired
	private ImgBsDao imgBsDao ;
	public List<ProductsDto> GetSanphamChitiet(String id) {
		return sanPhamSSSDao.GetSanphamChitiet(id);
	}
	public List<SanPham> GetSanphamCungloai(String id) {
		return sanPhamDao.GetSanphamCungloai(id);
	}
	public List<SanPham> GetSanphamDexuat() {
		return sanPhamDao.GetSanphamDexuat();
	}
	public List<ImgSpBs> GetImgBosung(String ma_sp) {
		return imgBsDao.GetImgBosung(ma_sp);
	}
}
