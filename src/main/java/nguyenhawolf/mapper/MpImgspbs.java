package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ImgSpBs;

public class MpImgspbs implements RowMapper<ImgSpBs>{
	@Override
	 public ImgSpBs mapRow(ResultSet rs,int rowNum) throws SQLException {
        ImgSpBs imgSPBS = new ImgSpBs();
        imgSPBS.setStt(rs.getInt("stt"));
        imgSPBS.setMaSp(rs.getInt("ma_sp"));
        imgSPBS.setImg(rs.getString("img"));
        return imgSPBS;
    }

}
