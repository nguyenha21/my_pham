package nguyenhawolf.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.EmailKhuyenMai;

public class MpEmailkhuyenmai implements RowMapper<EmailKhuyenMai> {
	@Override
	 public EmailKhuyenMai mapRow(ResultSet rs, int rowNum) throws SQLException {
        EmailKhuyenMai emailKhuyenMai = new EmailKhuyenMai();
        emailKhuyenMai.setStt(rs.getInt("stt"));
        emailKhuyenMai.setEmail(rs.getString("email"));
        emailKhuyenMai.setNgayTao(rs.getTimestamp("ngay_tao"));
        return emailKhuyenMai;
    }

}
