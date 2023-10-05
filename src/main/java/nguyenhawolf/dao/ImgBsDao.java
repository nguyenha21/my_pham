package nguyenhawolf.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.ImgSpBs;
import nguyenhawolf.mapper.MpImgspbs;
@Repository
public class ImgBsDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public List<ImgSpBs> GetImgBosung(String ma_sp) {
		List<ImgSpBs> list = new ArrayList<ImgSpBs>();
		String sql = "SELECT * FROM `img_sp_bs` WHERE ma_sp = "+ma_sp;
		list = _jdbcTemplate.query(sql, new MpImgspbs());
		return list;
	}
	

}
