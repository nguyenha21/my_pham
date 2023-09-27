package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.HomeDao;
import nguyenhawolf.entity.SanPham;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private HomeDao homeDao;
	public List<SanPham> GetSanpham() {
		return homeDao.GetSanpham();
	}

}
