package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ImgDm;

public class MpImgdm implements RowMapper<ImgDm>{
	@Override
	 public ImgDm mapRow(ResultSet rs, int rowNum) throws SQLException {
        ImgDm imgDm = new ImgDm();
        imgDm.setStt(rs.getInt("stt"));
        imgDm.setMaDm(rs.getInt("ma_dm"));
        imgDm.setImg(rs.getString("img"));
        return imgDm;
    }

}
