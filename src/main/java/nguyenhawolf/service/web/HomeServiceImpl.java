package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.GtspDao;
import nguyenhawolf.dao.SanPhamDao;
import nguyenhawolf.entity.GTSP;
import nguyenhawolf.entity.SanPham;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SanPhamDao sanPhamDao;
	@Autowired
	private GtspDao gtspDao;
	public List<SanPham> GetSanpham() {
		return sanPhamDao.GetSanpham();
	}
	public List<GTSP> GetAll() {
		return gtspDao.GetAll();
	}

}
