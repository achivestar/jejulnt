package com.pe.bluering.service;

import java.util.List;

import com.pe.bluering.vo.surveyOffVO;
import com.pe.bluering.vo.surveyVO;

public interface ChartService {

	int surveyCount();

	List<surveyVO> getAge(surveyVO surveyvo);

	List<surveyVO> item1(surveyVO surveyvo);

	List<surveyVO> getArea(surveyVO surveyvo);

	List<surveyVO> item2(surveyVO surveyvo);

	List<surveyVO> item3(surveyVO surveyvo);

	List<surveyVO> item4(surveyVO surveyvo);

	List<surveyVO> item5(surveyVO surveyvo);

	List<surveyVO> item6(surveyVO surveyvo);

	List<surveyVO> item7(surveyVO surveyvo);

	List<surveyVO> item8(surveyVO surveyvo);

	List<surveyVO> item9(surveyVO surveyvo);

	List<surveyVO> item10(surveyVO surveyvo);

	List<surveyOffVO> getOffSurveyList(surveyOffVO surveyoffvo);

	surveyOffVO getOffSurveyDetail(int idx);

}
