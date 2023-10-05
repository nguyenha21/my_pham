package nguyenhawolf.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MpTrademarks implements RowMapper<TrademarksDto> {
	@Override
	public TrademarksDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		TrademarksDto trademarksDto = new TrademarksDto();
		trademarksDto.setMa_Sp(rs.getInt("ma_sp"));
		trademarksDto.setTen_Sp(rs.getString("ten_sp"));
		trademarksDto.setImg(rs.getString("img"));
		trademarksDto.setDate_Tao(rs.getDate("date_tao"));
		trademarksDto.setGia_Ban(rs.getInt("gia_ban"));
		trademarksDto.setGia_Thi_Truong(rs.getInt("gia_thi_truong"));
		trademarksDto.setMa_Th(rs.getInt("ma_th"));
		trademarksDto.setSl_Trong_Kho(rs.getInt("sl_trong_kho"));
		trademarksDto.setMa_Pl(rs.getInt("ma_pl"));
		trademarksDto.setHien_Thi(rs.getBoolean("hien_thi"));
		trademarksDto.setSl_Da_Ban(rs.getInt("sl_da_ban"));
		trademarksDto.setMaTh(rs.getInt("ma_th"));
		trademarksDto.setTenThuongHieu(rs.getString("ten_thuong_hieu"));
		trademarksDto.setImg1(rs.getString("img"));

		return trademarksDto;
	}

}
