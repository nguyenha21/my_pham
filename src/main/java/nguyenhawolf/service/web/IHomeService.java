package nguyenhawolf.service.web;

import java.util.List;

import nguyenhawolf.entity.GTSP;
import nguyenhawolf.entity.ImgShow;
import nguyenhawolf.entity.SanPham;
import nguyenhawolf.entity.ThuongHieu;

public interface IHomeService {

	public List<SanPham> GetSanphamRandom();
	public List<SanPham> GetSanphamBanchay();
	public List<GTSP> GetAll();
	

	public List<ThuongHieu> GetThuonghieu();
	
	public List<ImgShow> GetImgshowSlide();
}
