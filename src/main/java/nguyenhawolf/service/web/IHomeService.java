package nguyenhawolf.service.web;

import java.util.List;

import nguyenhawolf.entity.GTSP;
import nguyenhawolf.entity.SanPham;

public interface IHomeService {

	public List<SanPham> GetSanpham();

	public List<GTSP> GetAll();
}
