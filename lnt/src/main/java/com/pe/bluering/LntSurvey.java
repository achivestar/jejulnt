package com.pe.bluering;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.pe.bluering.service.SurveyService;
import com.pe.bluering.vo.surveyOffVO;


@Controller
public class LntSurvey {

	/*
	 * @Autowired ThumbnailService thumb;
	 * 
	 * 
	 * 
	 * @RequestMapping(value="/survey", method=RequestMethod.GET) public String
	 * index(thumbVO thumbvo,Model model) {
	 * 
	 * return "survey/index"; }
	 */
	
	@Autowired
	SurveyService surveyService;

	@RequestMapping(value="/survey", method = RequestMethod.GET)
	public String index(HttpSession session,Model model) throws Exception {

		return "survey/index";
	}
	
	
	/*
	 * @RequestMapping(value="/survey", method=RequestMethod.GET) public String
	 * index2(HttpSession session,Model model) throws Exception {
	 * 
	 * SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd"); Date time =
	 * new Date(); String todayTime = format.format(time);
	 * model.addAttribute("todayTime",todayTime);
	 * 
	 * 
	 * return "survey/index"; }
	 */

	@RequestMapping(value="/index", method=RequestMethod.POST)
	public void insert(surveyOffVO surveyvo,Model model,HttpServletRequest request) throws IllegalStateException, IOException {

		surveyService.insert(surveyvo);	
	}

	

   
   
}
