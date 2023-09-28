package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ImgSp;

public class MpImgsp implements RowMapper<ImgSp>{
	@Override
	public ImgSp mapRow(ResultSet rs,int rowNum) throws SQLException {
        ImgSp imgSP = new ImgSp();
        imgSP.setStt(rs.getInt("stt"));
        imgSP.setMaSp(rs.getInt("ma_sp"));
        imgSP.setImg(rs.getString("img"));
        return imgSP;
    }

}
