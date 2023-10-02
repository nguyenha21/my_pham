package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.ThongtinwebDao;
import nguyenhawolf.entity.ThongTinWeb;

@Service
public class HeaderServiceImpl implements IHeaderService{
	@Autowired
	private ThongtinwebDao thongtinwebDao;
	public List<ThongTinWeb> GetThongtinweb() {
		return thongtinwebDao.GetThongtinweb();
	}
	
}
