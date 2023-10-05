package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.SanphamThuonghieuDao;
import nguyenhawolf.dao.ThuonghieuDao;
import nguyenhawolf.dto.TrademarksDto;
import nguyenhawolf.entity.ThuongHieu;
@Service
public class TrademarkServiceImpl {
	@Autowired
	private SanphamThuonghieuDao sanphamThuonghieuDao;
	@Autowired
	private ThuonghieuDao thuonghieuDao;
	public List<ThuongHieu> GetThuonghieuByID(int ma_th) {
		return thuonghieuDao.GetThuonghieuByID(ma_th);
	}
	public List<TrademarksDto> GetAllProductsByID(int id) {
		return sanphamThuonghieuDao.GetAllProductsByID(id);
	}
	public List<TrademarksDto> GetDataProductsByPaginate(int id,int start,int totalPage) {
		return sanphamThuonghieuDao.GetDataProductsByPaginate( id,start, totalPage);
	}
	
}
