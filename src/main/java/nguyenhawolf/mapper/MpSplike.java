package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.SpLike;

public class MpSplike implements RowMapper<SpLike>{
	@Override
	public SpLike mapRow(ResultSet rs, int rowNum) throws SQLException {
        SpLike spLike= new SpLike();
        spLike.setStt(rs.getInt("stt"));
        spLike.setIdTk(rs.getInt("id_tk"));
        spLike.setChuoiMaSpLike(rs.getString("chuoi_ma_sp_like"));
        return spLike;
    }

}
