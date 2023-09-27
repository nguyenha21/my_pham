package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.GioiThieuSanPham;

public class MpGTSP implements RowMapper<GioiThieuSanPham>{

	@Override
	public GioiThieuSanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		GioiThieuSanPham gioiThieuSP = new GioiThieuSanPham();
        gioiThieuSP.setStt(rs.getInt("stt"));
        gioiThieuSP.setMaSP(rs.getInt("ma_sp"));
        gioiThieuSP.setKhaiQuat(rs.getString("khai_quat"));
        gioiThieuSP.setNoiDung(rs.getString("noidung"));
        gioiThieuSP.setDanhGia(rs.getFloat("danh_gia"));
        return gioiThieuSP;
	}
}
