package com.pe.bluering.dao;



import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.vo.memberVO;
import com.pe.bluering.vo.mgVO;
import com.pe.bluering.vo.replyVO;
import com.pe.bluering.vo.surveyOffVO;
import com.pe.bluering.vo.surveyVO;
import com.pe.bluering.vo.thumbVO;

@Repository
public class ChartDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;


	public int surveyCount() {
		return this.sqlSessionTemplate.selectOne("sv.surveyCount");
	}

	public List<surveyVO> getAge(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.surveyGetAgeCount");
	}

	public List<surveyVO> getArea(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.surveyGetAreaCount");
	}

	public List<surveyVO> item1(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item1");
	}

	public List<surveyVO> item2(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item2");
	}

	public List<surveyVO> item3(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item3");
	}

	public List<surveyVO> item4(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item4");
	}

	public List<surveyVO> item5(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item5");
	}

	public List<surveyVO> item6(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item6");
	}

	public List<surveyVO> item7(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item7");
	}

	public List<surveyVO> item8(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item8");
	}

	public List<surveyVO> item9(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item9");
	}

	public List<surveyVO> item10(surveyVO surveyvo) {
		return this.sqlSessionTemplate.selectList("sv.item10");
	}

	public List<surveyOffVO> surveyOffSurvey(surveyOffVO surveyoffvo) {
		return this.sqlSessionTemplate.selectList("sv.surveyoffvo");
	}

	public surveyOffVO getOffSurveyDetail(int idx) {
		return this.sqlSessionTemplate.selectOne("sv.surveyoffDetail",idx);
	}
	

	

}
