package nguyenhawolf.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nguyenhawolf.entity.SanPham;
@Service
public interface IHomeService {
	@Autowired
	public List<SanPham> GetSanpham();
}
