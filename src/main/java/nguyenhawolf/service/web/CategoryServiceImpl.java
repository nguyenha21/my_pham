package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.DanhmucDao;
import nguyenhawolf.dao.SanphamDanhmucDao;
import nguyenhawolf.dto.CategorysDto;
import nguyenhawolf.entity.DanhMuc;
@Service
public class CategoryServiceImpl {
	@Autowired
	private SanphamDanhmucDao sanphamDanhmucDao;
	@Autowired
	private DanhmucDao danhmucDao;
	public List<DanhMuc> GetDanhmucByID(int ma_dm) {
		return danhmucDao.GetDanhmucByID(ma_dm);
	}
	public List<CategorysDto> GetAllProductsByID(int id) {
		return sanphamDanhmucDao.GetAllProductsByID(id);
	}
	public List<CategorysDto> GetDataProductsByPaginate(int id,int start,int totalPage) {
		return sanphamDanhmucDao.GetDataProductsByPaginate( id,start, totalPage);
	}
	
}
