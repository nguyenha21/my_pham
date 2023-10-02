package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.GtspDao;
import nguyenhawolf.dao.ImgshowDao;
import nguyenhawolf.dao.SanPhamDao;
import nguyenhawolf.dao.ThuonghieuDao;
import nguyenhawolf.entity.GTSP;
import nguyenhawolf.entity.ImgShow;
import nguyenhawolf.entity.SanPham;
import nguyenhawolf.entity.ThuongHieu;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SanPhamDao sanPhamDao;
	@Autowired
	private GtspDao gtspDao;
	@Autowired
	private ImgshowDao imgshowDao; 
	
	@Autowired
	private ThuonghieuDao thuonghieuDao;
	
	public List<SanPham> GetSanphamRandom() {
		return sanPhamDao.GetSanphamRandom();
	}
	
	public List<GTSP> GetAll() {
		return gtspDao.GetAll();
	}
	
	public List<SanPham> GetSanphamBanchay() {
		return sanPhamDao.GetSanphamBanchay();
	}
	
	public List<ThuongHieu> GetThuonghieu() {
		return thuonghieuDao.GetThuonghieu();
	}
	
	public List<ImgShow> GetImgshowSlide() {
		return imgshowDao.GetImgshowSlide();
	}
	

}
