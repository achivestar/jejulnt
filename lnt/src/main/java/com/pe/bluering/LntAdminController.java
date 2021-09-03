package com.pe.bluering;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pe.bluering.service.ChartService;
import com.pe.bluering.service.ThumbnailService;
import com.pe.bluering.vo.memberVO;
import com.pe.bluering.vo.mgVO;
import com.pe.bluering.vo.surveyOffVO;
import com.pe.bluering.vo.surveyVO;
import com.pe.bluering.vo.thumbVO;

@Controller
public class LntAdminController {

	@Autowired
	ThumbnailService thumb;
	
	@Autowired
	ChartService chartService;
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {	
		return "./admin/login";
	}
	
	@RequestMapping(value="/admin/loginProcess", method=RequestMethod.POST)
	public String loginProcess(memberVO membervo, HttpServletRequest req, HttpServletResponse res, RedirectAttributes rttr) {	
		memberVO login = thumb.signin(membervo);
		HttpSession session = req.getSession();
		String url = "";
		System.out.println("로그인 정보 : " + login);
		if(login == null) {
			System.out.println("로그인 실패");
			rttr.addFlashAttribute("msg",false);
			url =  "redirect:/admin";
		}else {
			//System.out.println("로그인 성공");
			if(login.getPassword().equals(membervo.getPassword())){
				System.out.println("비번이 같아서 로그인 성공");
				session.setAttribute("isMember",login.getName());
				session.setAttribute("member",login);
					url = "redirect:/admin/index";		
			}else {
				System.out.println("비번이 달라서 로그인 실패");
				rttr.addFlashAttribute("msg",false);
				url =  "redirect:/admin";
			}
			
		}
		
		return url;

	}
	
	
	@RequestMapping(value="/admin/logoutProcess", method=RequestMethod.GET)
	public String logoutProcess(HttpSession session) {
		thumb.signout(session);
		return "redirect: /admin";
	}
	
	@RequestMapping(value="/admin/index", method=RequestMethod.GET)
	public String index(Model model,memberVO membervo,surveyVO surveyvo,HttpSession session) {	
		
		Object loginInfo = session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo.equals("admin") &&  loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
			 
			 List<surveyVO> ageList = chartService.getAge(surveyvo);
			 model.addAttribute("ageList",ageList);
			 List<surveyVO> areaList = chartService.getArea(surveyvo);
			 model.addAttribute("areaList",areaList);
			 List<surveyVO> item1 = chartService.item1(surveyvo);
			 model.addAttribute("item1",item1);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		 
		
		 
		
		return "./admin/index";
	}
	
	@RequestMapping(value="/admin/member", method=RequestMethod.GET)
	public String member(thumbVO thumbvo,Model model,memberVO membervo,surveyVO surveyvo,HttpSession session,@RequestParam(value="pnum", defaultValue="1") int pnum) {	
		
		Object loginInfo = session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo.equals("admin") &&  loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
			 	int count;
			 	count = thumb.getMemberCount();
			 System.out.println("activc Count : " +count);
			 
			 	// 한 페이지에 출력할 게시물 갯수
					 int postNum = 10;
					  
					 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
					 int pageNum = (int)Math.ceil((double)count/postNum);
					  
					 // 출력할 게시물
					 int displayPost = (pnum - 1) * postNum;
					 membervo.setDisplayPost(displayPost);
					// 한번에 표시할 페이징 번호의 갯수
					int pageNum_cnt = 5;
					membervo.setPostNum(postNum);
					

					// 표시되는 페이지 번호 중 마지막 번호
					int endPageNum = (int)(Math.ceil((double)pnum / (double)pageNum_cnt) * pageNum_cnt);

					// 표시되는 페이지 번호 중 첫번째 번호
					int startPageNum = endPageNum - (pageNum_cnt - 1);
					
					// 마지막 번호 재계산
					int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
					 
					if(endPageNum > endPageNum_tmp) {
					 endPageNum = endPageNum_tmp;
					}
					
					boolean prev = startPageNum == 1 ? false : true;
					boolean next = endPageNum * pageNum_cnt >= count ? false : true;
					
					// 시작 및 끝 번호
					model.addAttribute("startPageNum", startPageNum);
					model.addAttribute("endPageNum", endPageNum);

					// 이전 및 다음 
					model.addAttribute("prev", prev);
					model.addAttribute("next", next);
					
					// 현재 페이지
					model.addAttribute("select", pnum);
					
					model.addAttribute("pageNum", pageNum);
					System.out.println("pageNum : " +pageNum);
					
					List<memberVO> memberList = thumb.getMember(membervo);
					model.addAttribute("memberList",memberList);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		return "./admin/member";
	}
	
	
	@RequestMapping(value="/admin/active", method=RequestMethod.GET)
	public String active(Model model,memberVO membervo,HttpSession session) {	
		Object loginInfo = session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		return "./admin/active";
	}
	
	@RequestMapping(value="/admin/notice", method=RequestMethod.GET)
	public String notice(Model model,memberVO membervo,HttpSession session) {	
		Object loginInfo = session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		return "./admin/notice";
	}
	
	@RequestMapping(value="/admin/chart", method=RequestMethod.GET)
	public String chart(Model model,memberVO membervo,HttpSession session,surveyVO surveyvo) {	
		Object loginInfo = session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
			 
			 
			 
			 List<surveyVO> ageList = chartService.getAge(surveyvo);
			 model.addAttribute("ageList",ageList);
			 List<surveyVO> areaList = chartService.getArea(surveyvo);
			 model.addAttribute("areaList",areaList);
			 List<surveyVO> item1 = chartService.item1(surveyvo);
			 model.addAttribute("item1",item1);
			 List<surveyVO> item2 = chartService.item2(surveyvo);
			 model.addAttribute("item2",item2);
			 List<surveyVO> item3 = chartService.item3(surveyvo);
			 model.addAttribute("item3",item3);
			 
			 List<surveyVO> item4 = chartService.item4(surveyvo);
			 model.addAttribute("item4",item4);
			 List<surveyVO> item5 = chartService.item5(surveyvo);
			 model.addAttribute("item5",item5);
			 List<surveyVO> item6 = chartService.item6(surveyvo);
			 model.addAttribute("item6",item6);
			 List<surveyVO> item7 = chartService.item7(surveyvo);
			 model.addAttribute("item7",item7);
			 
			 List<surveyVO> item8 = chartService.item8(surveyvo);
			 model.addAttribute("item8",item8);
			 
			 
			 List<surveyVO> item9 = chartService.item9(surveyvo);
			 model.addAttribute("item9",item9);
			 List<surveyVO> item10 = chartService.item10(surveyvo);
			 model.addAttribute("item10",item10);
			 
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		return "./admin/chart";
	}
	
	
	@RequestMapping(value="/admin/chart2", method=RequestMethod.GET)
	public String chart2(Model model,memberVO membervo,HttpSession session,surveyOffVO surveyoffvo) {	
		Object loginInfo = session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
			 
			 
			 
//			 List<surveyVO> ageList = chartService.getAge(surveyvo);
//			 model.addAttribute("ageList",ageList);
//			 List<surveyVO> areaList = chartService.getArea(surveyvo);
//			 model.addAttribute("areaList",areaList);
//			 List<surveyVO> item1 = chartService.item1(surveyvo);
//			 model.addAttribute("item1",item1);
//			 List<surveyVO> item2 = chartService.item2(surveyvo);
//			 model.addAttribute("item2",item2);
//			 List<surveyVO> item3 = chartService.item3(surveyvo);
//			 model.addAttribute("item3",item3);
//			 
//			 List<surveyVO> item4 = chartService.item4(surveyvo);
//			 model.addAttribute("item4",item4);
//			 List<surveyVO> item5 = chartService.item5(surveyvo);
//			 model.addAttribute("item5",item5);
//			 List<surveyVO> item6 = chartService.item6(surveyvo);
//			 model.addAttribute("item6",item6);
//			 List<surveyVO> item7 = chartService.item7(surveyvo);
//			 model.addAttribute("item7",item7);
//			 
//			 List<surveyVO> item8 = chartService.item8(surveyvo);
//			 model.addAttribute("item8",item8);
//			 
//			 
//			 List<surveyVO> item9 = chartService.item9(surveyvo);
//			 model.addAttribute("item9",item9);
//			 List<surveyVO> item10 = chartService.item10(surveyvo);
//			 model.addAttribute("item10",item10);
//			 
			 List<surveyOffVO> list = chartService.getOffSurveyList(surveyoffvo);
			 model.addAttribute("list",list);
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		return "./admin/chart2";
	}
	
	
	@RequestMapping(value="/admin/chart2Detail", method=RequestMethod.GET)
	public String chart2Detail(memberVO membervo,HttpSession session,@RequestParam("idx") int idx,Model model,surveyOffVO surveyoffvo) {

		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }

		surveyoffvo  = chartService.getOffSurveyDetail(idx);
		model.addAttribute("surveyoffvo",surveyoffvo);

		
		return "/admin/chart2Detail";
	}
	
	
	
	
	@RequestMapping(value="/admin/activeregist", method=RequestMethod.POST)
	public String activeregist(thumbVO thumbvo,Model model,MultipartFile uploadfile,HttpServletRequest request,memberVO membervo,HttpSession session) throws IOException {

		String loginInfo = (String) session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		System.out.println("============ 입력 start ================");
		System.out.println("파일 이름: {}"+ uploadfile.getOriginalFilename());
		System.out.println("파일 크기: {}"+ uploadfile.getSize());
		
		//file.getOriginalFilename() != null && file.getOriginalFilename() != ""
		if(uploadfile.getOriginalFilename() == null ) {
			System.out.println("업로드할 파일이 없습니다.");
			thumbvo.setWriter(loginInfo);
			thumb.regist(thumbvo);	
		}else {
			String saveFile = saveFile(uploadfile,request);
			thumbvo.setSaveFileName(saveFile);
			thumbvo.setOriginalFileName(uploadfile.getOriginalFilename());
			thumbvo.setWriter(loginInfo);
			thumb.regist(thumbvo);	
		}

		System.out.println("============ 입력 end ================");
		
		return "redirect:/admin/activeList";
	}
	
	@RequestMapping(value="/admin/noticeregist", method=RequestMethod.POST)
	public String noticeregist(thumbVO thumbvo,Model model,MultipartFile uploadfile,HttpServletRequest request,memberVO membervo,HttpSession session) throws IOException {

		String loginInfo = (String) session.getAttribute("isMember");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		System.out.println("============ 입력 start ================");
		System.out.println("파일 이름: {}"+ uploadfile.getOriginalFilename());
		System.out.println("파일 크기: {}"+ uploadfile.getSize());
		
		//file.getOriginalFilename() != null && file.getOriginalFilename() != ""
		if(uploadfile.getOriginalFilename() == null ) {
			System.out.println("업로드할 파일이 없습니다.");
			thumbvo.setWriter(loginInfo);
			thumb.noticeRegist(thumbvo);	
		}else {
			String saveFile = noticeSaveFile(uploadfile,request);
			thumbvo.setSaveFileName(saveFile);
			thumbvo.setOriginalFileName(uploadfile.getOriginalFilename());
			thumbvo.setWriter(loginInfo);
			thumb.noticeRegist(thumbvo);	
		}

		System.out.println("============ 입력 end ================");
		
		return "redirect:/admin/noticeList";
	}
	
	
	
	private String  saveFile(MultipartFile uploadfile,HttpServletRequest request) {
		
		  // 웹서비스 root 경로
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/thumb/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("파일경로 :" +UPLOAD_PATH);
		
	    
	    
		// 파일 이름 변경
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + uploadfile.getOriginalFilename();

	    System.out.println("saveName: {}"+saveName);

	    // 저장할 File 객체를 생성(껍데기 파일)
	    File saveFile = new File(UPLOAD_PATH,saveName); // 저장할 폴더 이름, 저장할 파일 이름

	    try {
	    	uploadfile.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	    } catch (IOException e) {
	        e.printStackTrace();
	        return null;
	    }

	    return saveName;
		
	}
	
	
	private String  noticeSaveFile(MultipartFile uploadfile,HttpServletRequest request) {
		
		  // 웹서비스 root 경로
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/noticefile/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("파일경로 :" +UPLOAD_PATH);
		
	    
	    
		// 파일 이름 변경
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + uploadfile.getOriginalFilename();

	    System.out.println("saveName: {}"+saveName);

	    // 저장할 File 객체를 생성(껍데기 파일)
	    File saveFile = new File(UPLOAD_PATH,saveName); // 저장할 폴더 이름, 저장할 파일 이름

	    try {
	    	uploadfile.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	    } catch (IOException e) {
	        e.printStackTrace();
	        return null;
	    }

	    return saveName;
		
	}
	

	private String saveUpdateFile(MultipartFile uploadfile, HttpServletRequest request, String delFileName) {
		  // 웹서비스 root 경로
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/thumb/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("파일경로 :" +UPLOAD_PATH);
	    
	    String deleteFileName = UPLOAD_PATH+delFileName;
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    
      // 파일이 존재하는지 체크 존재할경우 true, 존재하지않을경우 false
      if(deleteFile.exists()) {
          
          // 파일을 삭제합니다.
          deleteFile.delete(); 
          
          System.out.println("파일을 삭제하였습니다.");
          
      } else {
          System.out.println("파일이 존재하지 않습니다.");
          
      }
		
	    
		// 파일 이름 변경
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + uploadfile.getOriginalFilename();

	    System.out.println("saveName: {}"+saveName);

	    // 저장할 File 객체를 생성(껍데기 파일)
	    File saveFile = new File(UPLOAD_PATH,saveName); // 저장할 폴더 이름, 저장할 파일 이름

	    try {
	    	uploadfile.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	    } catch (IOException e) {
	        e.printStackTrace();
	        return null;
	    }

	    return saveName;
	}
	
	
	private String saveUpdateNoticeFile(MultipartFile uploadfile, HttpServletRequest request, String delFileName) {
		  // 웹서비스 root 경로
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/noticefile/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("파일경로 :" +UPLOAD_PATH);
	    
	    String deleteFileName = UPLOAD_PATH+delFileName;
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    
    // 파일이 존재하는지 체크 존재할경우 true, 존재하지않을경우 false
    if(deleteFile.exists()) {
        
        // 파일을 삭제합니다.
        deleteFile.delete(); 
        
        System.out.println("파일을 삭제하였습니다.");
        
    } else {
        System.out.println("파일이 존재하지 않습니다.");
        
    }
		
	    
		// 파일 이름 변경
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + uploadfile.getOriginalFilename();

	    System.out.println("saveName: {}"+saveName);

	    // 저장할 File 객체를 생성(껍데기 파일)
	    File saveFile = new File(UPLOAD_PATH,saveName); // 저장할 폴더 이름, 저장할 파일 이름

	    try {
	    	uploadfile.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	    } catch (IOException e) {
	        e.printStackTrace();
	        return null;
	    }

	    return saveName;
	}
	
	
	@RequestMapping(value="/admin/activeList", method=RequestMethod.GET)
	public String activeList(memberVO membervo,HttpSession session, thumbVO thumbvo,Model model,MultipartFile uploadfile,HttpServletRequest request, @RequestParam(value="pnum", defaultValue="1") int pnum) throws IOException {
		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		
		int count;
		 count = thumb.getActiveCount();
		 System.out.println("activc Count : " +count);
		 
		// 한 페이지에 출력할 게시물 갯수
				 int postNum = 6;
				  
				 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
				 int pageNum = (int)Math.ceil((double)count/postNum);
				  
				 // 출력할 게시물
				 int displayPost = (pnum - 1) * postNum;
				 thumbvo.setDisplayPost(displayPost);
				// 한번에 표시할 페이징 번호의 갯수
				int pageNum_cnt = 5;
				thumbvo.setPostNum(postNum);
				

				// 표시되는 페이지 번호 중 마지막 번호
				int endPageNum = (int)(Math.ceil((double)pnum / (double)pageNum_cnt) * pageNum_cnt);

				// 표시되는 페이지 번호 중 첫번째 번호
				int startPageNum = endPageNum - (pageNum_cnt - 1);
				
				// 마지막 번호 재계산
				int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
				 
				if(endPageNum > endPageNum_tmp) {
				 endPageNum = endPageNum_tmp;
				}
				
				boolean prev = startPageNum == 1 ? false : true;
				boolean next = endPageNum * pageNum_cnt >= count ? false : true;
				
				// 시작 및 끝 번호
				model.addAttribute("startPageNum", startPageNum);
				model.addAttribute("endPageNum", endPageNum);

				// 이전 및 다음 
				model.addAttribute("prev", prev);
				model.addAttribute("next", next);
				
				// 현재 페이지
				model.addAttribute("select", pnum);
				
				model.addAttribute("pageNum", pageNum);
				System.out.println("pageNum : " +pageNum);
				
				List<thumbVO> list = thumb.getActiveList(thumbvo);
				System.out.println(list);
				
				
				model.addAttribute("list",list);
				


				
		return "/admin/activeList";
	}
	
	
	@RequestMapping(value="/admin/noticeList", method=RequestMethod.GET)
	public String noticeList(memberVO membervo,HttpSession session,thumbVO thumbvo,Model model,MultipartFile uploadfile,HttpServletRequest request,@RequestParam(value="pnum", defaultValue="1") int pnum) throws IOException {
		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		
		int count;
		 count = thumb.getNoticeCount();
		 System.out.println("activc Count : " +count);
		 
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = 5;
		  
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		  
		 // 출력할 게시물
		 int displayPost = (pnum - 1) * postNum;
		 thumbvo.setDisplayPost(displayPost);
		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 5;
		thumbvo.setPostNum(postNum);
		

		// 표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int)(Math.ceil((double)pnum / (double)pageNum_cnt) * pageNum_cnt);

		// 표시되는 페이지 번호 중 첫번째 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		// 마지막 번호 재계산
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		 
		if(endPageNum > endPageNum_tmp) {
		 endPageNum = endPageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음 
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		// 현재 페이지
		model.addAttribute("select", pnum);
		
		model.addAttribute("pageNum", pageNum);
		System.out.println("pageNum : " +pageNum);


		List<thumbVO> list = thumb.getNoticeList(thumbvo);
		System.out.println(list);
		model.addAttribute("list",list);
		return "/admin/noticeList";
	}

	
	@RequestMapping(value="/admin/activeModify", method=RequestMethod.GET)
	public String activeModify(memberVO membervo,HttpSession session,@RequestParam("idx") int idx,Model model) {

		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		
		System.out.println("modify mapping start");
		thumbVO thumbvo;
		thumbvo  = thumb.modify(idx);
		model.addAttribute("thumbvo",thumbvo);
		System.out.println("modify mapping end");
		
		return "/admin/activeModify";
	}
	
	

	@RequestMapping(value="/admin/noticeModify", method=RequestMethod.GET)
	public String noticeModify(memberVO membervo,HttpSession session,@RequestParam("idx") int idx,Model model) {

		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
			 
			 int survetCount = chartService.surveyCount();
			 model.addAttribute("survetCount", survetCount);
			 
			 int contentsCount = thumb.getActiveCount();
			 model.addAttribute("contentsCount", contentsCount);
			 
			 int noticeCount = thumb.getNoticeCount();
			 model.addAttribute("noticeCount", noticeCount);
			 
			 int memberCount = thumb.getMemberCount();
			 model.addAttribute("memberCount", memberCount);
			 
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		System.out.println("modify mapping start");
		thumbVO thumbvo;
		thumbvo  = thumb.noticeModify(idx);
		model.addAttribute("thumbvo",thumbvo);
		System.out.println("modify mapping end");
		
		return "/admin/noticeModify";
	}

	
	
	
	
	
	
	@RequestMapping(value="/admin/activeUpdate", method=RequestMethod.POST)
	public String activeUpdate(memberVO membervo,thumbVO thumbvo, MultipartFile uploadfile, Model model, HttpSession session,HttpServletRequest request) {

		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		System.out.println("update mapping start");
		System.out.println("파일 이름: {}"+ uploadfile.getOriginalFilename());
		System.out.println("파일 크기: {}"+ uploadfile.getSize());
		System.out.println("파일 이름 : {}" + uploadfile.getName());
		System.out.println("idx :"  + thumbvo.getIdx());
		String delFileName = getDeleteFileName(thumbvo.getIdx());
		System.out.println("getDeleteFileName : " + delFileName);
		
		if(uploadfile.getOriginalFilename().equals("")) {
			System.out.println("업로드할 파일이 없습니다.");
			String getSaveFileName = getSaveFileName(thumbvo.getIdx());
			String getOriginFileName = getOriginFileName(thumbvo.getIdx());
			System.out.println("존재하는 파일 이름 : "+getSaveFileName + ":"+getOriginFileName);
			thumbvo.setSaveFileName(getSaveFileName);
			thumbvo.setOriginalFileName(getOriginFileName);
			this.thumb.update(thumbvo);
		}else {
			System.out.println("업로드할 파일 있습니다.");
			String saveFile = saveUpdateFile(uploadfile,request,delFileName);
			thumbvo.setSaveFileName(saveFile);
			thumbvo.setOriginalFileName(uploadfile.getOriginalFilename());
			this.thumb.update(thumbvo);
		}
	
		System.out.println("update mapping end");
		
		return "redirect:/admin/activeList";
	}
	
	
	
	@RequestMapping(value="/admin/noticeUpdate", method=RequestMethod.POST)
	public String noticeUpdate(memberVO membervo,HttpSession session,thumbVO thumbvo, MultipartFile uploadfile, Model model,HttpServletRequest request) {

		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		System.out.println("update mapping start");
		System.out.println("파일 이름: {}"+ uploadfile.getOriginalFilename());
		System.out.println("파일 크기: {}"+ uploadfile.getSize());
		System.out.println("파일 이름 : {}" + uploadfile.getName());
		System.out.println("idx :"  + thumbvo.getIdx());
		String delFileName = getNoticeDeleteFileName(thumbvo.getIdx());
		System.out.println("getDeleteFileName : " + delFileName);
		
		if(uploadfile.getOriginalFilename().equals("")) {
			System.out.println("업로드할 파일이 없습니다.");
			String getSaveFileName = getSaveNoticeFileName(thumbvo.getIdx());
			String getOriginFileName = getOriginNoticeFileName(thumbvo.getIdx());
			System.out.println("존재하는 파일 이름 : "+getSaveFileName + ":"+getOriginFileName);
			thumbvo.setSaveFileName(getSaveFileName);
			thumbvo.setOriginalFileName(getOriginFileName);
			this.thumb.noticeUpdate(thumbvo);
		}else {
			System.out.println("업로드할 파일 있습니다.");
			String saveFile = saveUpdateNoticeFile(uploadfile,request,delFileName);
			thumbvo.setSaveFileName(saveFile);
			thumbvo.setOriginalFileName(uploadfile.getOriginalFilename());
			this.thumb.noticeUpdate(thumbvo);
		}
	
		System.out.println("update mapping end");
		
		return "redirect:/admin/noticeList";
	}
	


	@RequestMapping(value="/admin/delete", method = RequestMethod.POST)
	public String delete(Model model,memberVO membervo,HttpSession session,@RequestParam("idx") int idx, HttpServletRequest request,@RequestParam(value="num", defaultValue="1") int num) {
		
		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		 
		 
		System.out.println("delete mapping start");
		deleteFile(idx,request);
		this.thumb.delete(idx);
		System.out.println("delete mapping end");
		return "redirect:/admin/activeList";
	}
	
	@RequestMapping(value="/admin/noticeDelete", method = RequestMethod.POST)
	public String noticeDelete(Model model,memberVO membervo,HttpSession session,@RequestParam("idx") int idx, HttpServletRequest request,@RequestParam(value="num", defaultValue="1") int num) {
		Object loginInfo = session.getAttribute("member");
		System.out.println("loginInfo : "+loginInfo);
		
		 if(loginInfo != null) {
			 model.addAttribute("msg",true);
		 }else { 
			 model.addAttribute("msg",false); 
		 }
		
		System.out.println("delete mapping start");
		deleteNoticeFile(idx,request);
		this.thumb.noticeDelete(idx);
		System.out.println("delete mapping end");
		return "redirect:/admin/noticeList";
	}
	
	
	
	
	private void deleteFile(int idx, HttpServletRequest request) {
		  // 웹서비스 root 경로
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/thumb/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("파일경로 :" +UPLOAD_PATH);
	    String delFileName = getDeleteFileName(idx);
	    String deleteFileName = UPLOAD_PATH+delFileName;
	    
	    //썸네일 파일 삭제
	    String thumb_path = "resources/ckUpload/"+idx;
	    String THUMB_UPLOAD_PATH = root_path+thumb_path;
	    System.out.println("썸네일 파일 삭제 경로 : " + THUMB_UPLOAD_PATH);
	    
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    File thumbDeleteFile = new File(THUMB_UPLOAD_PATH);
      // 파일이 존재하는지 체크 존재할경우 true, 존재하지않을경우 false
      if(deleteFile.exists()) {
          
          // 파일을 삭제합니다.
          deleteFile.delete(); 
          
          System.out.println("파일을 삭제하였습니다.");
          
      } else {
          System.out.println("파일이 존재하지 않습니다.");
          
      }
      
      if(thumbDeleteFile.exists()) {
          
          // 파일을 삭제합니다.
    	  File[] deleteFolderList = thumbDeleteFile.listFiles();
			
			for (int j = 0; j < deleteFolderList.length; j++) {
				  deleteFolderList[j].delete(); 
		          System.out.println("썸네일 파일을 삭제하였습니다.");
			}
			
			if(deleteFolderList.length == 0 && thumbDeleteFile.isDirectory()){
				thumbDeleteFile.delete();
				System.out.println("썸네일 폴더를 삭제하였습니다.");
			}
          

          
      } else {
          System.out.println("파일이 존재하지 않습니다.");
          
      }
		
	}
	
	
	private void deleteNoticeFile(int idx, HttpServletRequest request) {
		  // 웹서비스 root 경로
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/noticefile/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("파일경로 :" +UPLOAD_PATH);
	    String delFileName = getDeleteFileName(idx);
	    String deleteFileName = UPLOAD_PATH+delFileName;
	    
	    //썸네일 파일 삭제
	    String thumb_path = "resources/noticeCkUpload/"+idx;
	    String THUMB_UPLOAD_PATH = root_path+thumb_path;
	    System.out.println("썸네일 파일 삭제 경로 : " + THUMB_UPLOAD_PATH);
	    
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    File thumbDeleteFile = new File(THUMB_UPLOAD_PATH);
    // 파일이 존재하는지 체크 존재할경우 true, 존재하지않을경우 false
    if(deleteFile.exists()) {
        
        // 파일을 삭제합니다.
        deleteFile.delete(); 
        
        System.out.println("파일을 삭제하였습니다.");
        
    } else {
        System.out.println("파일이 존재하지 않습니다.");
        
    }
    
    if(thumbDeleteFile.exists()) {
        
        // 파일을 삭제합니다.
  	  File[] deleteFolderList = thumbDeleteFile.listFiles();
			
			for (int j = 0; j < deleteFolderList.length; j++) {
				  deleteFolderList[j].delete(); 
		          System.out.println("썸네일 파일을 삭제하였습니다.");
			}
			
			if(deleteFolderList.length == 0 && thumbDeleteFile.isDirectory()){
				thumbDeleteFile.delete();
				System.out.println("썸네일 폴더를 삭제하였습니다.");
			}
        

        
    } else {
        System.out.println("파일이 존재하지 않습니다.");
        
    }
		
	}

	private String getDeleteFileName(Integer idx) {
		return  thumb.getDeleteFileName(idx);
	}
	
	private String getOriginFileName(Integer idx) {
		return  thumb.getOriginFileName(idx);
	}

	private String getSaveFileName(Integer idx) {
		return  thumb.getSaveFileName(idx);
	}
	
	private String getNoticeDeleteFileName(Integer idx) {
		return  thumb.getDeleteNoticeFileName(idx);
	}
	
	private String getOriginNoticeFileName(Integer idx) {
		return  thumb.getOriginNoticeFileName(idx);
	}

	private String getSaveNoticeFileName(Integer idx) {
		return  thumb.getSaveNoticeFileName(idx);
	}


	
	
	
	@RequestMapping(value = "/admin/ckUpload", method = RequestMethod.POST)
	public void postCKEditorImgUpload(HttpServletRequest req,
	          HttpServletResponse res,thumbVO thumbvo,
	          @RequestParam MultipartFile upload) throws Exception {
			System.out.println("post CKEditor img upload");
			 // 랜덤 문자 생성
			 UUID uid = UUID.randomUUID();
			 
			 OutputStream out = null;
			 PrintWriter printWriter = null;
		
			 // 인코딩
			 res.setCharacterEncoding("utf-8");
			 res.setContentType("text/html;charset=utf-8");
		
			 try {
			  
			  String fileName = upload.getOriginalFilename();  // 파일 이름 가져오기
			  byte[] bytes = upload.getBytes();
			  
			  // 업로드 경로
			    String root_path = req.getSession().getServletContext().getRealPath("/");  
			    int idx = 0;
			    if(thumb.getNoticeCount()==0) {
			    	idx = 1;
			    }else {
			    	 idx = thumb.getNoticeIdx()+1;
			    }
			   
			    String attach_path = "resources/ckUpload/"+idx+"/";
			    String UPLOAD_PATH = root_path+attach_path;
			    System.out.println("업로드파일경로 :" +UPLOAD_PATH);

				File Folder = new File(UPLOAD_PATH);

				// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
				if (!Folder.exists()) {
					try{
					    Folder.mkdir(); //폴더 생성합니다.
					    System.out.println("폴더가 생성되었습니다.");
				        } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			         }else {
					System.out.println("이미 폴더가 생성되어 있습니다.");
				}
			    
			    
			   String ckUploadPath = UPLOAD_PATH + uid + "_" + fileName;
			   
			  System.out.println("ckUploadPath : "  +ckUploadPath);
			  out = new FileOutputStream(new File(ckUploadPath));
			  out.write(bytes);
			 
			  out.flush();  // out에 저장된 데이터를 전송하고 초기화
		
			  String callback = req.getParameter("CKEditorFuncNum");
			  printWriter = res.getWriter();
				 // String fileUrl = "http://bluering.pe.kr/resources/noticeCkUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			  String fileUrl = "http://jejulnt.net/resources/ckUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			
			  // 업로드시 메시지 출력
			  printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			  
			  printWriter.flush();
			  System.out.println("fileUrl : " + fileUrl);
			  
			 } catch (IOException e) { e.printStackTrace();
			 } finally {
			  try {
			   if(out != null) { out.close(); }
			   if(printWriter != null) { printWriter.close(); }
			  } catch(IOException e) { e.printStackTrace(); }
			 }
			
		
			return ; 
	}
	
	@RequestMapping(value = "/admin/noticeCkUpload", method = RequestMethod.POST)
	public void postCKEditorImgNoticeUpload(HttpServletRequest req,
	          HttpServletResponse res,thumbVO thumbvo,
	          @RequestParam MultipartFile upload) throws Exception {
			System.out.println("post CKEditor img notice upload");
			 // 랜덤 문자 생성
			 UUID uid = UUID.randomUUID();
			 
			 OutputStream out = null;
			 PrintWriter printWriter = null;
		
			 // 인코딩
			 res.setCharacterEncoding("utf-8");
			 res.setContentType("text/html;charset=utf-8");
		
			 try {
			  
			  String fileName = upload.getOriginalFilename();  // 파일 이름 가져오기
			  byte[] bytes = upload.getBytes();
			  
			  // 업로드 경로
			    String root_path = req.getSession().getServletContext().getRealPath("/");  
			    int idx = 0;
			    if(thumb.getNoticeCount()==0) {
			    	idx = 1;
			    }else {
			    	 idx = thumb.getNoticeIdx()+1;
			    }
			   
			    String attach_path = "resources/noticeCkUpload/"+idx+"/";
			    String UPLOAD_PATH = root_path+attach_path;
			    System.out.println("업로드파일경로 :" +UPLOAD_PATH);

				File Folder = new File(UPLOAD_PATH);

				// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
				if (!Folder.exists()) {
					try{
					    Folder.mkdir(); //폴더 생성합니다.
					    System.out.println("폴더가 생성되었습니다.");
				        } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			         }else {
					System.out.println("이미 폴더가 생성되어 있습니다.");
				}
			    
			    
			   String ckUploadPath = UPLOAD_PATH + uid + "_" + fileName;
			   
			  System.out.println("ckUploadPath : "  +ckUploadPath);
			  out = new FileOutputStream(new File(ckUploadPath));
			  out.write(bytes);
			 
			  out.flush();  // out에 저장된 데이터를 전송하고 초기화
		
			  String callback = req.getParameter("CKEditorFuncNum");
			  printWriter = res.getWriter();
			// String fileUrl = "http://bluering.pe.kr/resources/noticeCkUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			  String fileUrl = "http://jejulnt.net/resources/noticeCkUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			
			  // 업로드시 메시지 출력
			  printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			  
			  printWriter.flush();
			  System.out.println("fileUrl : " + fileUrl);
			  
			 } catch (IOException e) { e.printStackTrace();
			 } finally {
			  try {
			   if(out != null) { out.close(); }
			   if(printWriter != null) { printWriter.close(); }
			  } catch(IOException e) { e.printStackTrace(); }
			 }
			
		
			return ; 
	}
	
	
	
	
	@RequestMapping(value = "/admin/ckUpdateUpload", method = RequestMethod.POST)
	public void postCKEditorImgUpdateUpload(HttpServletRequest req,
	          HttpServletResponse res,thumbVO thumbvo,
	          @RequestParam MultipartFile upload) throws Exception {
			System.out.println("post CKEditor img upload");
			 // 랜덤 문자 생성
			 UUID uid = UUID.randomUUID();
			 
			 OutputStream out = null;
			 PrintWriter printWriter = null;
		
			 // 인코딩
			 res.setCharacterEncoding("utf-8");
			 res.setContentType("text/html;charset=utf-8");
		
			 try {
			  
			  String fileName = upload.getOriginalFilename();  // 파일 이름 가져오기
			  byte[] bytes = upload.getBytes();
			  
			  // 업로드 경로
			    String root_path = req.getSession().getServletContext().getRealPath("/");  
			    int idx = thumbvo.getIdx();
			    System.out.println("썸네일 update" + idx);
			    String attach_path = "resources/ckUpload/"+idx+"/";
			    String UPLOAD_PATH = root_path+attach_path;
			    System.out.println("업로드파일경로 :" +UPLOAD_PATH);

				File Folder = new File(UPLOAD_PATH);

				// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
				if (!Folder.exists()) {
					try{
					    Folder.mkdir(); //폴더 생성합니다.
					    System.out.println("폴더가 생성되었습니다.");
				        } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			         }else {
					System.out.println("이미 폴더가 생성되어 있습니다.");
				}
			    
			    
			   String ckUploadPath = UPLOAD_PATH + uid + "_" + fileName;
			   
			  System.out.println("ckUploadPath : "  +ckUploadPath);
			  out = new FileOutputStream(new File(ckUploadPath));
			  out.write(bytes);
			 
			  out.flush();  // out에 저장된 데이터를 전송하고 초기화
		
			  String callback = req.getParameter("CKEditorFuncNum");
			  printWriter = res.getWriter();
				 // String fileUrl = "http://bluering.pe.kr/resources/noticeCkUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			  String fileUrl = "http://jejulnt.net/resources/ckUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			
			  // 업로드시 메시지 출력
			  printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			  
			  printWriter.flush();
			  System.out.println("fileUrl : " + fileUrl);
			  
			 } catch (IOException e) { e.printStackTrace();
			 } finally {
			  try {
			   if(out != null) { out.close(); }
			   if(printWriter != null) { printWriter.close(); }
			  } catch(IOException e) { e.printStackTrace(); }
			 }
			
		
			return ; 
	}
	
	
	@RequestMapping(value = "/admin/ckUpdateNoticeUpload", method = RequestMethod.POST)
	public void postCKEditorImgUpdateNoticeUpload(HttpServletRequest req,
	          HttpServletResponse res,thumbVO thumbvo,
	          @RequestParam MultipartFile upload) throws Exception {
			System.out.println("post CKEditor img upload");
			 // 랜덤 문자 생성
			 UUID uid = UUID.randomUUID();
			 
			 OutputStream out = null;
			 PrintWriter printWriter = null;
		
			 // 인코딩
			 res.setCharacterEncoding("utf-8");
			 res.setContentType("text/html;charset=utf-8");
		
			 try {
			  
			  String fileName = upload.getOriginalFilename();  // 파일 이름 가져오기
			  byte[] bytes = upload.getBytes();
			  
			  // 업로드 경로
			    String root_path = req.getSession().getServletContext().getRealPath("/");  
			    int idx = thumbvo.getIdx();
			    System.out.println("썸네일 update" + idx);
			    String attach_path = "resources/noticeCkUpload/"+idx+"/";
			    String UPLOAD_PATH = root_path+attach_path;
			    System.out.println("업로드파일경로 :" +UPLOAD_PATH);

				File Folder = new File(UPLOAD_PATH);

				// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
				if (!Folder.exists()) {
					try{
					    Folder.mkdir(); //폴더 생성합니다.
					    System.out.println("폴더가 생성되었습니다.");
				        } 
				        catch(Exception e){
					    e.getStackTrace();
					}        
			         }else {
					System.out.println("이미 폴더가 생성되어 있습니다.");
				}
			    
			    
			   String ckUploadPath = UPLOAD_PATH + uid + "_" + fileName;
			   
			  System.out.println("ckUploadPath : "  +ckUploadPath);
			  out = new FileOutputStream(new File(ckUploadPath));
			  out.write(bytes);
			 
			  out.flush();  // out에 저장된 데이터를 전송하고 초기화
		
			  String callback = req.getParameter("CKEditorFuncNum");
			  printWriter = res.getWriter();
			 // String fileUrl = "http://bluering.pe.kr/resources/noticeCkUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			  String fileUrl = "http://jejulnt.net/resources/noticeCkUpload/"+idx+"/" + uid + "_" + fileName;  // 작성화면
			
			  // 업로드시 메시지 출력
			  printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			  
			  printWriter.flush();
			  System.out.println("fileUrl : " + fileUrl);
			  
			 } catch (IOException e) { e.printStackTrace();
			 } finally {
			  try {
			   if(out != null) { out.close(); }
			   if(printWriter != null) { printWriter.close(); }
			  } catch(IOException e) { e.printStackTrace(); }
			 }
			
		
			return ; 
	}
	
	
	
}
