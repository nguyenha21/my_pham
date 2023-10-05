package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.PhanloaiDao;
import nguyenhawolf.dao.SanphamPhanloaiDao;
import nguyenhawolf.dto.CategorysDto;
import nguyenhawolf.entity.PhanLoaiSp;
@Service
public class ClassifyServiceImpl {
	@Autowired
	private SanphamPhanloaiDao sanphamPhanloaiDao;
	@Autowired
	private PhanloaiDao phanloaiDao;
	public List<PhanLoaiSp> GetPhanloaiByID(int ma_pl) {
		return phanloaiDao.GetPhanloaiByID(ma_pl);
	}
	public List<CategorysDto> GetAllProductsByID(int id) {
		return sanphamPhanloaiDao.GetAllProductsByID(id);
	}
	public List<CategorysDto> GetDataProductsByPaginate(int id,int start,int totalPage) {
		return sanphamPhanloaiDao.GetDataProductsByPaginate( id,start, totalPage);
	}
	
}
