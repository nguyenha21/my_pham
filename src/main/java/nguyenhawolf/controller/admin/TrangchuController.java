package nguyenhawolf.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import nguyenhawolf.service.admin.AccountServiceImpl;

@Controller(value = "TrangchuAdminController")
public class TrangchuController extends BaseController {
	@Autowired
	public AccountServiceImpl accountServiceImpl;

	@RequestMapping(value = "/admin-trangchu", method = RequestMethod.GET)
	public ModelAndView homePage(HttpSession session) {
		String account = (String) session.getAttribute("account");
			_mavShare.setViewName("admin/trang_chu");

		return _mavShare;
	}
	@RequestMapping(value = "/bang_dieu_khien", method = RequestMethod.POST)
//	@ResponseBody
    public ModelAndView handleRequest(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }
	@RequestMapping(value = "/san_pham", method = RequestMethod.POST)
	public ModelAndView san_pham(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }
	@RequestMapping(value = "/tai_khoan", method = RequestMethod.POST)
	public ModelAndView tai_khoan(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }
	@RequestMapping(value = "/giao_dien", method = RequestMethod.POST)
	public ModelAndView giao_dien(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }
	@RequestMapping(value = "/kho", method = RequestMethod.POST)
	public ModelAndView kho(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }
	@RequestMapping(value = "/don_hang", method = RequestMethod.POST)
	public ModelAndView don_hang(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }
	@RequestMapping(value = "/he_thong_cua_hang", method = RequestMethod.POST)
	public ModelAndView he_thong_cua_hang(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }
	@RequestMapping(value = "/thong_tin_web", method = RequestMethod.POST)
	public ModelAndView thong_tin_web(@RequestBody String data) {
        // Xử lý dữ liệu ở đây và tạo phản hồi
		_mavShare.setViewName("admin/bang_dieu_khien");
        return _mavShare;
    }


	

}
