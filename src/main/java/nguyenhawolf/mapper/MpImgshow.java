package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.ImgShow;

public class MpImgshow implements RowMapper<ImgShow>{
	@Override
	public ImgShow mapRow(ResultSet rs, int rowNum) throws SQLException {
        ImgShow imgShow = new ImgShow();
        imgShow.setMaImg(rs.getInt("ma_img"));
        imgShow.setThongTin(rs.getString("thong_tin"));
        imgShow.setLoaiAnh(rs.getInt("loai_anh"));
        imgShow.setHienThi(rs.getBoolean("hien_thi"));
        imgShow.setImg(rs.getString("img"));
        return imgShow;
    }

}
