package com.pe.bluering.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.mgDAO;
import com.pe.bluering.dao.surveyDAO;
import com.pe.bluering.vo.surveyOffVO;
import com.pe.bluering.vo.surveyVO;

@Service
public class SurveyServiceImpl implements SurveyService {

	@Autowired
	surveyDAO surveydao;

	@Override
	public void insert(surveyOffVO surveyvo) {
		this.surveydao.insert(surveyvo);
	}
	
}
