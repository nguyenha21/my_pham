package nguyenhawolf.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MpCategorys implements RowMapper<CategorysDto> {
	@Override
	public CategorysDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		CategorysDto categorysDto = new CategorysDto();
		categorysDto.setMa_Sp(rs.getInt("ma_sp"));
		categorysDto.setTen_Sp(rs.getString("ten_sp"));
		categorysDto.setImg(rs.getString("img"));
		categorysDto.setDate_Tao(rs.getDate("date_tao"));
		categorysDto.setGia_Ban(rs.getInt("gia_ban"));
		categorysDto.setGia_Thi_Truong(rs.getInt("gia_thi_truong"));
		categorysDto.setMa_Th(rs.getInt("ma_th"));
		categorysDto.setSl_Trong_Kho(rs.getInt("sl_trong_kho"));
		categorysDto.setMa_Pl(rs.getInt("ma_pl"));
		categorysDto.setHien_Thi(rs.getBoolean("hien_thi"));
		categorysDto.setSl_Da_Ban(rs.getInt("sl_da_ban"));
		categorysDto.setMaPl(rs.getInt("ma_pl"));
		categorysDto.setTenLoaiSp(rs.getString("ten_loai_sp"));
		categorysDto.setMaDm(rs.getInt("ma_dm"));
		return categorysDto;
	}

}
