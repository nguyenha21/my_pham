package nguyenhawolf.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import nguyenhawolf.entity.PhanLoaiSp;

public class MpPhanloaiSP implements RowMapper<PhanLoaiSp>{
	@Override
	 public PhanLoaiSp mapRow(ResultSet rs,int rowNum) throws SQLException {
        PhanLoaiSp phanLoaiSP = new PhanLoaiSp();
        phanLoaiSP.setMaPl(rs.getInt("ma_pl"));
        phanLoaiSP.setTenLoaiSp(rs.getString("ten_loai_sp"));
        phanLoaiSP.setMaDm(rs.getInt("ma_dm"));
        return phanLoaiSP;
    }

}
