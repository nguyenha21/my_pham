package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.SanphamDanhmucDao;
import nguyenhawolf.dto.CategorysDto;
@Service
public class CategoryServiceImpl {
	@Autowired
	private SanphamDanhmucDao sanphamDanhmucDao;
	public List<CategorysDto> GetAllProductsByID(int id) {
		return sanphamDanhmucDao.GetAllProductsByID(id);
	}
	public List<CategorysDto> GetDataProductsByPaginate(int id,int start,int totalPage) {
		return sanphamDanhmucDao.GetDataProductsByPaginate( id,start, totalPage);
	}
	
}
