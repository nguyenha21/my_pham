package nguyenhawolf.service.web;

import java.util.List;

import nguyenhawolf.dto.ProductsDto;

public interface IProductService {
	public List<ProductsDto> GetSanphamChitiet(int ma_sp);
//	public List<SanPham> GetSanphamCungloai(String id);
}
