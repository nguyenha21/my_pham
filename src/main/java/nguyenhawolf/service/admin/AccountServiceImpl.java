package nguyenhawolf.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.TaiKhoanDao;
import nguyenhawolf.dao.ThongtinTKDao;
import nguyenhawolf.entity.TaiKhoan;
import nguyenhawolf.entity.ThongTinTk;
@Service
public class AccountServiceImpl {
	@Autowired
	private TaiKhoanDao taiKhoanDao;
	@Autowired
	private ThongtinTKDao thongtinTKDao;
	public List<TaiKhoan> CheckTK(String tk, String mk) {
		return taiKhoanDao.CheckTK( tk,  mk);
	}
	public List<ThongTinTk> GetThongTinTK(int id){
		return thongtinTKDao.GetThongTinTK(id);
	}
	
	
}
