package com.pe.bluering;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pe.bluering.service.ThumbnailService;
import com.pe.bluering.vo.memberVO;
import com.pe.bluering.vo.mgVO;
import com.pe.bluering.vo.replyVO;
import com.pe.bluering.vo.thumbVO;

@Controller
public class LntController {

	@Autowired
	ThumbnailService thumb;
	
	@Autowired    //서비스를 호출하기 위해서 의존성을 주입
	JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.

	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index(thumbVO thumbvo,Model model) {	
		List<thumbVO> activeList = thumb.getActiveListIndex(thumbvo);
		List<thumbVO> noticeList = thumb.getNoticeListIndex(thumbvo);
		System.out.println(activeList);
		System.out.println(noticeList);
		model.addAttribute("activeList",activeList);
		model.addAttribute("noticeList",noticeList);
		
		return "index";
	}
	
	@RequestMapping(value="/about", method=RequestMethod.GET)
	public String about() {	
		return "about";
	}
	
	@RequestMapping(value="/active", method=RequestMethod.GET)
	public String active(thumbVO thumbvo,Model model,MultipartFile uploadfile,HttpServletRequest request, @RequestParam(value="pnum", defaultValue="1") int pnum) {	
		
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
				
				List<thumbVO> commentCount = thumb.getCommentCount(thumbvo);
				System.out.println("commentCount"+ commentCount);
				model.addAttribute("commentCount",commentCount);

				
				
		return "active";
	}
	

	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice(thumbVO thumbvo,Model model,MultipartFile uploadfile,HttpServletRequest request,@RequestParam(value="pnum", defaultValue="1") int pnum) {	
		
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
		return "notice";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(String urls, Model model, @RequestParam(value="idx", defaultValue="1") int idx) {	
		
			model.addAttribute("urls",urls);
			model.addAttribute("idx",idx);
		
		return "login";
	}
	
	@RequestMapping(value="/memberAgree", method=RequestMethod.GET)
	public String memberAgree() {	
		return "memberAgree";
	}
	@RequestMapping(value="/memberRegist", method=RequestMethod.GET)
	public String memberRegistGET(String e_mail, Model model) {	
		model.addAttribute("e_mail",e_mail);
		return "memberRegist";
	}
	@RequestMapping(value="/memberRegist", method=RequestMethod.POST)
	public void memberRegistPOST(memberVO membervo, Model model,HttpServletRequest request) {	
		System.out.println(membervo);
		thumb.memberRegist(membervo);
		
	}
	
	@RequestMapping(value="/findInfo", method=RequestMethod.GET)
	public String findInfo() {	
		return "findInfo";
	}
	
	@RequestMapping(value="/emailFindProcess", method=RequestMethod.POST)
	public String emailFindProcess(memberVO membervo, Model model,HttpServletRequest request,RedirectAttributes rttr) {	
		System.out.println(membervo);
		memberVO  isEmail = thumb.emailFind(membervo);
		//System.out.println("isEmail : " + isEmail.getEmail());
		String url = "";
		
		if(isEmail == null) {
			System.out.println("email 실패");
			rttr.addFlashAttribute("msg",false);
			url =  "redirect:/findInfo";
		}else {
				System.out.println("email 찾기 success");
				rttr.addFlashAttribute("msg",true);
				rttr.addFlashAttribute("msg2",isEmail.getEmail());
				url = "redirect:/findInfo";
		}
		
		return url;
			

		
	}
	
	@RequestMapping(value="/passwordFindProcess", method=RequestMethod.POST)
	public String passwordFindProcess(memberVO membervo, Model model,HttpServletRequest request,RedirectAttributes rttr) {	
		System.out.println(membervo);
		memberVO  isPassword= thumb.passwordFind(membervo);
		//System.out.println("isEmail : " + isEmail.getEmail());
		String url = "";
		
		if(isPassword == null) {
			System.out.println("비번찾기 실패");
			rttr.addFlashAttribute("msg3",false);
			url =  "redirect:/findInfo";
		}else {
				System.out.println("비번 찾기 success");
				rttr.addFlashAttribute("msg3",true);
				rttr.addFlashAttribute("msg4",isPassword.getPassword());
				url = "redirect:/findInfo";
		}
		
		return url;
			

		
	}
	
	
	
	
	@RequestMapping(value="/activeDetail", method=RequestMethod.GET)
	public String activeDetail(@RequestParam("idx") int idx, @RequestParam(value="num", defaultValue="1") int num,Model model, HttpSession session, HttpServletRequest req, replyVO replyvo) {	
		thumbVO thumbvo;
		thumbvo  = thumb.modify(idx);
		this.thumb.updateHit(idx);
		
		 session = req.getSession();
		System.out.println("로그인 이용자 : "+session.getAttribute("member"));
		
		List<replyVO> replyList = thumb.getReply(idx);
		System.out.println(replyList);
		
		List<replyVO> replyList2 = thumb.getReply2(idx);
		System.out.println(replyList2);
		
		
		int repleCount = thumb.getReplyCount(idx);
		List<replyVO> reRepleCount = thumb.getReRepleCount(replyvo);
		
		List<replyVO> getRepleAll = thumb.getRepleAll(replyvo);
		System.out.println("num : " + num);
		System.out.println(reRepleCount);
		model.addAttribute("repleCount",repleCount);
		model.addAttribute("replyList",replyList);
		model.addAttribute("replyList2",replyList2);
		model.addAttribute("thumbvo",thumbvo);
		model.addAttribute("reRepleCount",reRepleCount);
		model.addAttribute("getRepleAll",getRepleAll);
		//model.addAttribute("member",session.getAttribute("member"));
		
		return "activeDetail";
	}

	
	
	@RequestMapping(value="/noticeDetail", method=RequestMethod.GET)
	public String noticeDetail(@RequestParam("idx") int idx,Model model, HttpSession session) {	
		thumbVO thumbvo;
		thumbvo  = thumb.noticeModify(idx);
		System.out.println(thumbvo);
		model.addAttribute("thumbvo",thumbvo);
		return "noticeDetail";
	}
	
	@RequestMapping(value="/loginProcess", method=RequestMethod.POST)
	public String loginProcess(memberVO membervo, String urls, int idx, HttpServletRequest req, HttpServletResponse res, RedirectAttributes rttr) {	
		memberVO login = thumb.signin(membervo);
		HttpSession session = req.getSession();
		String url = "";
		
		if(login == null) {
			System.out.println("로그인 실패");
			rttr.addFlashAttribute("msg",false);
			url =  "redirect:/login";
		}else {
			//System.out.println("로그인 성공");
			if(login.getPassword().equals(membervo.getPassword())){
				System.out.println("비번이 같아서 로그인 성공");
				session.setAttribute("member",login);
				if(urls.equals("")) {
					System.out.println("urls 없음 : "  +urls);
					url = "redirect:/";
					
				}else {
					System.out.println("urls 있음 : "  +urls);
					url = "redirect:/activeDetail?idx="+idx+"#reArea";
				}
			

			}else {
				System.out.println("비번이 달라서 로그인 실패");
				rttr.addFlashAttribute("msg",false);
				url =  "redirect:/login";
			}
			
		}
		
		return url;

	}
	
	
	@RequestMapping(value="/logoutProcess", method=RequestMethod.GET)
	public String logoutProcess(HttpSession session) {
		thumb.signout(session);
		return "redirect:/";
	}
	
	@RequestMapping(value="/replyInsert", method=RequestMethod.POST)
	public String replyInsert(String writer, replyVO replyvo, String urls, int num, HttpServletRequest req, HttpServletResponse res, RedirectAttributes rttr) {	
		replyvo.setWriter(writer);
		replyvo.setNum(num);
		replyvo.setGroupNum(thumb.getMaxRepleIdx());
		System.out.println("댓글 등록");
		System.out.println(replyvo);
	   thumb.replayInsert(replyvo);
	   return "redirect:/";
	}
	
	@RequestMapping(value="/reReplyInsert", method=RequestMethod.POST)
	public String reReplyInsert(String writer, replyVO replyvo, String urls, int num,int level,int orders, HttpServletRequest req, HttpServletResponse res, RedirectAttributes rttr) {	
		replyvo.setWriter(writer);
		replyvo.setNum(num);
		replyvo.setLevel(level);
		replyvo.setOrders(orders);
		
		System.out.println("대댓글 등록");
		System.out.println(replyvo);
	   thumb.replayInsert(replyvo);
	   return "redirect:/";
	}
	
	
	@RequestMapping(value="/repleModify", method=RequestMethod.POST)
	public String repleModify(@RequestParam("idx") int idx,Model model, HttpSession session, replyVO replyvo) {	
		System.out.println("댓글 수정");
		System.out.println(replyvo);

		 thumb.repleModify(replyvo);
		 return "redirect:/";
	}
	
	@RequestMapping(value="/repleDelete", method=RequestMethod.POST)
	public String repleDelete(Model model, HttpSession session, replyVO replyvo) {	
		System.out.println("댓글 삭제");
		System.out.println(replyvo);

		 thumb.repleDelete(replyvo);
		 return "redirect:/";
	}
	
	@RequestMapping(value="/repleDelete2", method=RequestMethod.POST)
	public String repleDelete2(Model model, HttpSession session, replyVO replyvo) {	
		System.out.println("댓글 삭제");
		System.out.println(replyvo);

		 thumb.repleDelete2(replyvo);
		 return "redirect:/";
	}
	
	
	

	@RequestMapping( value = "/emailAuth" , method=RequestMethod.POST )
    public ModelAndView mailSending(HttpServletRequest request, String e_mail, HttpServletResponse response_email) throws IOException {

		   response_email.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response_email.getWriter();
		
		String isEmail = thumb.isEmailUser(e_mail);
		  ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
		if(isEmail != null) {
			System.out.println("이메일이 있음");
			 out.println("<script>alert('이미 가입되어있는 이메일이 존재 합니다.');</script>");
		      out.flush();
		}else {
			System.out.println("이메일이 없음");
			System.out.println(isEmail);
	        Random r = new Random();
	        int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
	        
	        String setfrom = "kkameun@naver.com";
	        String tomail = request.getParameter("e_mail"); // 받는 사람 이메일
	        String title = "회원가입 인증 이메일 입니다."; // 제목
	        String content =
	        
	     
	        System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
	        
	        System.getProperty("line.separator")+
	                
	        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
	        
	        +System.getProperty("line.separator")+
	        
	        System.getProperty("line.separator")+

	        " 인증번호는 " +dice+ " 입니다. "
	        
	        +System.getProperty("line.separator")+
	        
	        System.getProperty("line.separator")+
	        
	        "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
	        
	        System.out.println("setFrom : " + setfrom);
	        System.out.println("tomail : " + tomail);
	        System.out.println("title : " + title);
	        System.out.println("content : " + content);
	        try {
	            MimeMessage message = mailSender.createMimeMessage();
	            MimeMessageHelper messageHelper = new MimeMessageHelper(message,
	                    true, "UTF-8");

	            messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
	            messageHelper.setTo(tomail); // 받는사람 이메일
	            messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	            messageHelper.setText(content); // 메일 내용
	            
	            mailSender.send(message);
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        
	      
	        mv.setViewName("/emailAuth");     //뷰의이름
	        mv.addObject("dice", dice);
	        mv.addObject("e_mail",tomail);
	        
	        System.out.println("mv : "+mv);

	        response_email.setContentType("text/html; charset=UTF-8");
	        PrintWriter out_email = response_email.getWriter();
	        out_email.println("<script>alert('입력하신 이메일로 인증번호가 발송되었습니다. 인증번호를 입력해주세요.');</script>");
	        out_email.flush();
	      
	        
		}
	

		return mv;
        
     
        
    }

	//이메일 인증 페이지 맵핑 메소드
	@RequestMapping(value="/emailAuth", method=RequestMethod.GET)
	public String email() {
	    return "emailAuth";
	}
		
	 @RequestMapping(value = "/RegistCode", method = RequestMethod.POST)
	    public ModelAndView emailAuth (String email_injeung, String dice,  String e_mail, HttpServletResponse response_equals) throws IOException {
	 
	        System.out.println("마지막 : email_injeung : "+email_injeung);
	        
	        System.out.println("마지막 : dice : "+dice);
	        
	        
	        //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
	         
	        ModelAndView mv = new ModelAndView();
	        
	        mv.setViewName("/memberRegist");
	        
	        
	        
	        if (email_injeung.equals(dice)) {
	            
	            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
	            System.out.println("인증번호와 일치함");
	            
	            
	            mv.setViewName("./memberRegist");
	            
	           // mv.addObject("e_mail",email_injeung);
	            mv.addObject("e_mail",e_mail);
	            //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
	            //한번더 입력할 필요가 없게 한다.
	            
	            response_equals.setContentType("text/html; charset=UTF-8");
	            PrintWriter out_equals = response_equals.getWriter();
	            out_equals.println("<script>alert('인증번호가 일치합니다. 회원가입으로 이동합니다.');</script>");
	            out_equals.flush();
	    
	            return mv;
	            
	            
	        }else if (email_injeung != dice) {
	            
	            
	            ModelAndView mv2 = new ModelAndView(); 
	            
	            mv2.setViewName("/emailAuth");
	            
	            response_equals.setContentType("text/html; charset=UTF-8");
	            PrintWriter out_equals = response_equals.getWriter();
	            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
	            out_equals.flush();
	            
	    
	            return mv2;
	            
	        }    
	    
	        return mv;
	        
	    }

	
	 @RequestMapping("/download")
		public ModelAndView download(@RequestParam HashMap<Object, Object> params, ModelAndView mv,HttpServletRequest request) {
		 
		    String root_path = request.getSession().getServletContext().getRealPath("/");  
		    String attach_path = "resources/noticefile";
		    String UPLOAD_PATH = root_path+attach_path;
			String fileName = (String) params.get("fileName");
			String fullPath = UPLOAD_PATH + "/" + fileName;
			System.out.println("파일 다운 로드 " + fullPath);
			File file = new File(fullPath);
			
			mv.setViewName("downloadView");
			mv.addObject("downloadFile", file);
			return mv;
		}
	
	
	
	
	
	
	
	
	
	
	
		/// 네이버
	    @RequestMapping(value="/navercallback", method=RequestMethod.GET)
	    public String navercallback(HttpSession session) {
	        
	        return "navercallback";
	    }

		//네이버로그아웃
		@RequestMapping(value = "/naverlogout", method = { RequestMethod.GET, RequestMethod.POST })
		public String logout(HttpSession session)throws IOException {
		System.out.println("여기는 logout");
		session.invalidate();
		return "redirect:./";
		}
		

	 //카카오톡 관련 로그아웃 메소드
   @RequestMapping(value = "/kakaologout",method = { RequestMethod.GET, RequestMethod.POST })
   public String kakao_logout(HttpSession session, HttpServletRequest request) {
       
       //세션에 담긴값 초기화
       session.invalidate();
       
       return "redirect:./";
   }
   
   
   
}
