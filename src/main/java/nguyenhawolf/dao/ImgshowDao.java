package nguyenhawolf.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import nguyenhawolf.entity.ImgShow;
import nguyenhawolf.mapper.MpImgshow;
@Repository
public class ImgshowDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;


	public List<ImgShow> GetImgshowSlide() {
//		List<ImgShow> list = new ArrayList<ImgShow>();
		String sql = "SELECT * FROM `img_show` WHERE loai_anh = 2";
//		list = _jdbcTemplate.query(sql, new MpImgshow());
//		return list;
		return _jdbcTemplate.query(sql, new MpImgshow());
	}
}
