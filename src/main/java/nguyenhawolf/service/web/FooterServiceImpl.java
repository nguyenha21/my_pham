package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.HethongcuahangDao;
import nguyenhawolf.entity.HeThongCH;
@Service
public class FooterServiceImpl {
	@Autowired 
	private HethongcuahangDao hethongcuahangDao;
	
	public List<HeThongCH> GetHethongcuahang() {
		return hethongcuahangDao.GetHethongcuahang();
	}
}
