package com.pe.bluering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.ChartDAO;
import com.pe.bluering.dao.ThumbDAO;
import com.pe.bluering.vo.surveyOffVO;
import com.pe.bluering.vo.surveyVO;

@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	ChartDAO chartDao;

	@Override
	public int surveyCount() {
		return chartDao.surveyCount();
		
	}

	@Override
	public List<surveyVO> getAge(surveyVO surveyvo) {
		return chartDao.getAge(surveyvo);
	}

	@Override
	public List<surveyVO> getArea(surveyVO surveyvo) {
		return chartDao.getArea(surveyvo);
	}

	@Override
	public List<surveyVO> item1(surveyVO surveyvo) {
		return chartDao.item1(surveyvo);
	}

	@Override
	public List<surveyVO> item2(surveyVO surveyvo) {
		return chartDao.item2(surveyvo);
	}

	@Override
	public List<surveyVO> item3(surveyVO surveyvo) {
		return chartDao.item3(surveyvo);
	}

	@Override
	public List<surveyVO> item4(surveyVO surveyvo) {
		return chartDao.item4(surveyvo);
	}

	@Override
	public List<surveyVO> item5(surveyVO surveyvo) {
		return chartDao.item5(surveyvo);
	}

	@Override
	public List<surveyVO> item6(surveyVO surveyvo) {
		return chartDao.item6(surveyvo);
	}

	@Override
	public List<surveyVO> item7(surveyVO surveyvo) {
		return chartDao.item7(surveyvo);
	}

	@Override
	public List<surveyVO> item8(surveyVO surveyvo) {
		return chartDao.item8(surveyvo);
	}

	@Override
	public List<surveyVO> item9(surveyVO surveyvo) {
		return chartDao.item9(surveyvo);
	}

	@Override
	public List<surveyVO> item10(surveyVO surveyvo) {
		return chartDao.item10(surveyvo);
	}

	@Override
	public List<surveyOffVO> getOffSurveyList(surveyOffVO surveyoffvo) {
		return chartDao.surveyOffSurvey(surveyoffvo);
	}

	@Override
	public surveyOffVO getOffSurveyDetail(int idx) {
		return chartDao.getOffSurveyDetail(idx);
	}


}
