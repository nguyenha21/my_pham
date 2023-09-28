package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.HeThongCH;

public class MpHethongCH implements RowMapper<HeThongCH>{
	@Override
	public HeThongCH mapRow(ResultSet rs, int rowNum ) throws SQLException {
        HeThongCH heThongCh = new HeThongCH();
        heThongCh.setStt(rs.getInt("stt"));
        heThongCh.setDiaChi(rs.getString("dia_chi"));
        heThongCh.setSdt(rs.getString("sdt"));
        heThongCh.setHienThi(rs.getBoolean("hien_thi"));
        heThongCh.setNgayTao(rs.getTimestamp("ngay_tao"));
        return heThongCh;
    }

}
