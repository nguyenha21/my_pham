package nguyenhawolf.service.admin;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.dao.TaiKhoanDao;
import nguyenhawolf.dao.ThongtinTKDao;
import nguyenhawolf.entity.TKAdmin;
import nguyenhawolf.entity.ThongTinTk;
@Service
public class AccountServiceImpl {
	@Autowired
	private TaiKhoanDao taiKhoanDao;
	@Autowired
	private ThongtinTKDao thongtinTKDao;
	public boolean CheckTK(TKAdmin tkAdmin) {
		String  pass = tkAdmin.getMk();
		tkAdmin = taiKhoanDao.GetPass(tkAdmin);
		if (tkAdmin !=null) {
			if (BCrypt.checkpw(pass,  tkAdmin.getMk())) {
				return true;
			}else {
				return false;
			}
		}
		
		
		return false;
	}
	public List<ThongTinTk> GetThongTinTK(int id){
		return thongtinTKDao.GetThongTinTK(id);
	}
	
	public int AddTK(TKAdmin tkAdmin) {
		tkAdmin.setMk(BCrypt.hashpw(tkAdmin.getMk(), BCrypt.gensalt(10)));
		return taiKhoanDao.AddTK(tkAdmin);
	}
	public List<TKAdmin> CheckTKTT(String tk) {
		return taiKhoanDao.CheckTKTT( tk);
	}
	
}
