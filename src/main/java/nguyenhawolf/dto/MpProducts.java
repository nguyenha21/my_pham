package nguyenhawolf.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MpProducts implements RowMapper<ProductsDto> {

	@Override
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto productsDto = new ProductsDto();
		productsDto.setMa_Sp(rs.getInt("ma_sp"));
		productsDto.setTen_Sp(rs.getString("ten_sp"));
		productsDto.setImg(rs.getString("img"));
		productsDto.setDate_Tao(rs.getDate("date_tao"));
		productsDto.setGia_Ban(rs.getInt("gia_ban"));
		productsDto.setGia_Thi_Truong(rs.getInt("gia_thi_truong"));
		productsDto.setMa_Th(rs.getInt("ma_th"));
		productsDto.setSl_Trong_Kho(rs.getInt("sl_trong_kho"));
		productsDto.setMa_Pl(rs.getInt("ma_pl"));
		productsDto.setHien_Thi(rs.getBoolean("hien_thi"));
		productsDto.setSl_Da_Ban(rs.getInt("sl_da_ban"));
		productsDto.setStt(rs.getInt("stt"));
		productsDto.setKhaiQuat(rs.getString("khai_quat"));
		productsDto.setNoiDung(rs.getString("noidung"));
		productsDto.setDanhGia(rs.getFloat("danh_gia"));
		
		productsDto.setMaTh(rs.getInt("ma_th"));
		productsDto.setTenThuongHieu(rs.getString("ten_thuong_hieu"));
		
		productsDto.setMaPl(rs.getInt("ma_pl"));
		productsDto.setTenLoaiSp(rs.getString("ten_loai_sp"));
		productsDto.setMaDm(rs.getInt("ma_dm"));
		return productsDto;
	}

}
