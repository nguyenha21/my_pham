package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ThongTinWeb;

public class MpThongtinweb implements RowMapper<ThongTinWeb> {
	@Override
	public ThongTinWeb mapRow(ResultSet rs, int rowNum) throws SQLException {
		ThongTinWeb thongTinWeb = new ThongTinWeb();
		thongTinWeb.setTenCty(rs.getString("tenCty"));
		thongTinWeb.setDiaChi(rs.getString("dia_chi"));
		thongTinWeb.setTel(rs.getString("tel"));
		thongTinWeb.setEmail(rs.getString("email"));
		thongTinWeb.setWebsite(rs.getString("website"));
		thongTinWeb.setHotline(rs.getString("hotline"));
		thongTinWeb.setTongdTuvan(rs.getString("tongdTuvan"));
		thongTinWeb.setFacebook(rs.getString("facebook"));
		thongTinWeb.setInstagram(rs.getString("instagram"));
		thongTinWeb.setPinterest(rs.getString("pinterest"));
		thongTinWeb.setGoogle(rs.getString("google"));
		return thongTinWeb;
	}
}
