package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.PassResetTemp;

public class MpPassresettemp implements RowMapper<PassResetTemp> {

	@Override
	public PassResetTemp mapRow(ResultSet rs, int rowNum) throws SQLException {
		PassResetTemp passResetTemp = new PassResetTemp();
		passResetTemp.setStt(rs.getInt("stt"));
		passResetTemp.setEmail(rs.getString("email"));
		passResetTemp.setKeyKt(rs.getString("key_kt"));
		passResetTemp.setExpDate(rs.getTimestamp("expDate"));
		return passResetTemp;
	}

}
