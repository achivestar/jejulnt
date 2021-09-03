package com.pe.bluering;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pe.bluering.service.MgService;
import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.mgVO;

@Controller
public class ContractController {
	@Autowired
	MgService mgService;

	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model model, adminVO adminvo, HttpServletRequest req) {	
	
		System.out.println(adminvo.getId()+","+adminvo.getPassword());
		
		 HttpSession session = req.getSession();
		 
		 adminVO login = mgService.login(adminvo);
		// System.out.println("DB濡쒕��꽣 媛�吏�怨좎삩 媛� : " + login.getPassword());
		 
		 if(login!=null){
			 session.setAttribute("member", login);
			 return "redirect:/list";
			
		 }else {
			 session.setAttribute("member", null);

			 return "redirect:/";
		 }

		
	}
	
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		System.out.println(" 濡쒓렇�븘�썐");
		session.invalidate();
		return "redirect:/";
	}
	
//	@RequestMapping(value="/", method=RequestMethod.GET)
//	public String index() {	
//		return "index";
//	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model, mgVO mgvo,HttpSession session, @RequestParam(value="num", defaultValue="1") int num, String keyword) {
		Object loginInfo = session.getAttribute("member");
		if(loginInfo == null) {
			 model.addAttribute("msg", false);
		}
		mgvo.setKeyword(keyword);
		
		 int count;
	     if(keyword != null && keyword !="") {
	    	 System.out.println("寃��깋 移댁슫�듃");
	    	 System.out.println(mgvo.getKeyword());
	    	 count = mgService.searchCount(mgvo.getKeyword());
	    
	     }else {
	    	 System.out.println("�씪諛� 移댁슫�듃");
	    	  count = mgService.count();
	     }
		
		 System.out.println("count : "+count);
		  
		 // �븳 �럹�씠吏��뿉 異쒕젰�븷 寃뚯떆臾� 媛��닔
		 int postNum = 10;
		  
		 // �븯�떒 �럹�씠吏� 踰덊샇 ([ 寃뚯떆臾� 珥� 媛��닔 첨 �븳 �럹�씠吏��뿉 異쒕젰�븷 媛��닔 ]�쓽 �삱由�)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		  
		 // 異쒕젰�븷 寃뚯떆臾�
		 int displayPost = (num - 1) * postNum;
		 mgvo.setDisplayPost(displayPost);
		// �븳踰덉뿉 �몴�떆�븷 �럹�씠吏� 踰덊샇�쓽 媛��닔
		int pageNum_cnt = 10;
		mgvo.setPostNum(postNum);
		

		// �몴�떆�릺�뒗 �럹�씠吏� 踰덊샇 以� 留덉�留� 踰덊샇
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);

		// �몴�떆�릺�뒗 �럹�씠吏� 踰덊샇 以� 泥ル쾲吏� 踰덊샇
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		
		// 留덉�留� 踰덊샇 �옱怨꾩궛
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		 
		if(endPageNum > endPageNum_tmp) {
		 endPageNum = endPageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		// �떆�옉 諛� �걹 踰덊샇
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// �씠�쟾 諛� �떎�쓬 
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		// �쁽�옱 �럹�씠吏�
		model.addAttribute("select", num);
		
		//�궎�썙�뱶
		model.addAttribute("keyword",keyword);
		
		
		List<mgVO> list = mgService.list(mgvo);
		System.out.println(list);
		model.addAttribute("list",list);
		model.addAttribute("pageNum", pageNum);
		return "list";
	}
	
	
	@RequestMapping(value="/print", method=RequestMethod.GET)
	public String print(@RequestParam("idx") int idx,Model model) {

		System.out.println("print mapping start");
		mgVO mgvo;
		mgvo  = mgService.print(idx);
		String date = mgvo.getRegdate();
		String regdate = date.substring(0,10);
		
		System.out.println("print mapping end");
		model.addAttribute("regdate",regdate);
		model.addAttribute("mgvo",mgvo);
		return "print";
	}
	
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String list(Model model) {
		
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd");
		Date time = new Date();
		String todayTime = format.format(time);
		model.addAttribute("todayTime",todayTime);
		return "insert";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public void insert(mgVO mgvo,Model model,MultipartFile uploadfile,HttpServletRequest request) throws IllegalStateException, IOException {
		

		System.out.println("============ �엯�젰 start ================");
		System.out.println("�뙆�씪 �씠由�: {}"+ uploadfile.getOriginalFilename());
		System.out.println("�뙆�씪 �겕湲�: {}"+ uploadfile.getSize());
		
		if(uploadfile.getOriginalFilename().equals("")) {
			System.out.println("�뾽濡쒕뱶�븷 �뙆�씪�씠 �뾾�뒿�땲�떎.");
			mgService.create(mgvo);	
		}else {
			String saveFile = saveFile(uploadfile,request);
			mgvo.setSaveFileName(saveFile);
			mgvo.setOriginalFileName(uploadfile.getOriginalFilename());
			mgService.create(mgvo);	
		}

		System.out.println("============ �엯�젰 end ================");
	}

	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modify(@RequestParam("idx") int idx,Model model, HttpSession session) {

		Object loginInfo = session.getAttribute("member");
		if(loginInfo == null) {
			 model.addAttribute("msg", false);
		}
		
		System.out.println("modify mapping start");
		mgVO mgvo;
		mgvo  = mgService.detail(idx);
		model.addAttribute("mgvo",mgvo);
		System.out.println("modify mapping end");
		
		return "modify";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	@ResponseBody
	public mgVO detail(@RequestParam("idx") int idx) {

		System.out.println("detail mapping start");
		mgVO mgvo;
		mgvo  = mgService.detail(idx);
		System.out.println("detail mapping end");
		
		return mgvo;
	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String update(mgVO mgvo,Model model,MultipartFile uploadfile,HttpServletRequest request) {
		
		System.out.println("update mapping start");
		System.out.println("�뙆�씪 �씠由�: {}"+ uploadfile.getOriginalFilename());
		System.out.println("�뙆�씪 �겕湲�: {}"+ uploadfile.getSize());
		System.out.println("�뙆�씪 �씠由� : {}" + uploadfile.getName());
		System.out.println("idx :"  + mgvo.getIdx());
		String delFileName = getDeleteFileName(mgvo.getIdx());
		System.out.println("getDeleteFileName : " + delFileName);
		
		if(uploadfile.getOriginalFilename().equals("")) {
			System.out.println("�뾽濡쒕뱶�븷 �뙆�씪�씠 �뾾�뒿�땲�떎.");
			String getSaveFileName = getSaveFileName(mgvo.getIdx());
			String getOriginFileName = getOriginFileName(mgvo.getIdx());
			System.out.println("議댁옱�븯�뒗 �뙆�씪 �씠由� : "+getSaveFileName + ":"+getOriginFileName);
			mgvo.setSaveFileName(getSaveFileName);
			mgvo.setOriginalFileName(getOriginFileName);
			this.mgService.update(mgvo);
		}else {
			System.out.println("�뾽濡쒕뱶�븷 �뙆�씪 �엳�뒿�땲�떎.");
			String saveFile = saveUpdateFile(uploadfile,request,delFileName);
			mgvo.setSaveFileName(saveFile);
			mgvo.setOriginalFileName(uploadfile.getOriginalFilename());
			this.mgService.update(mgvo);
		}
	
		System.out.println("update mapping end");
		
		return "redirect:/list?num="+mgvo.getIdx();
	}
	
	
	private String getOriginFileName(Integer idx) {
		return  mgService.getOriginFileName(idx);
	}

	private String getSaveFileName(Integer idx) {
		return  mgService.getSaveFileName(idx);
	}

	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("idx") int idx, HttpServletRequest request,@RequestParam(value="num", defaultValue="1") int num) {
		System.out.println("delete mapping start");
		deleteFile(idx,request);
		this.mgService.delete(idx);
		System.out.println("delete mapping end");
		return "redirect:/list?num="+num;
	}
	
	
	
	private void deleteFile(int idx, HttpServletRequest request) {
		  // �쎒�꽌鍮꾩뒪 root 寃쎈줈
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/upload/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("�뙆�씪寃쎈줈 :" +UPLOAD_PATH);
	    String delFileName = getDeleteFileName(idx);
	    String deleteFileName = UPLOAD_PATH+delFileName;
	    
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    
        // �뙆�씪�씠 議댁옱�븯�뒗吏� 泥댄겕 議댁옱�븷寃쎌슦 true, 議댁옱�븯吏��븡�쓣寃쎌슦 false
        if(deleteFile.exists()) {
            
            // �뙆�씪�쓣 �궘�젣�빀�땲�떎.
            deleteFile.delete(); 
            
            System.out.println("�뙆�씪�쓣 �궘�젣�븯���뒿�땲�떎.");
            
        } else {
            System.out.println("�뙆�씪�씠 議댁옱�븯吏� �븡�뒿�땲�떎.");
            
        }
		
	}

	private String getDeleteFileName(Integer idx) {
		return  mgService.getDeleteFileName(idx);
	}

	private String  saveFile(MultipartFile uploadfile,HttpServletRequest request) {
		
		  // �쎒�꽌鍮꾩뒪 root 寃쎈줈
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/upload/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("�뙆�씪寃쎈줈 :" +UPLOAD_PATH);
		
	    
	    
		// �뙆�씪 �씠由� 蹂�寃�
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + uploadfile.getOriginalFilename();

	    System.out.println("saveName: {}"+saveName);

	    // ���옣�븷 File 媛앹껜瑜� �깮�꽦(猿띾뜲湲� �뙆�씪)
	    File saveFile = new File(UPLOAD_PATH,saveName); // ���옣�븷 �뤃�뜑 �씠由�, ���옣�븷 �뙆�씪 �씠由�

	    try {
	    	uploadfile.transferTo(saveFile); // �뾽濡쒕뱶 �뙆�씪�뿉 saveFile�씠�씪�뒗 猿띾뜲湲� �엯�옒
	    } catch (IOException e) {
	        e.printStackTrace();
	        return null;
	    }

	    return saveName;
		
	}
	

	private String saveUpdateFile(MultipartFile uploadfile, HttpServletRequest request, String delFileName) {
		  // �쎒�꽌鍮꾩뒪 root 寃쎈줈
	    String root_path = request.getSession().getServletContext().getRealPath("/");  
	    String attach_path = "resources/upload/";
	    String UPLOAD_PATH = root_path+attach_path;
	    System.out.println("�뙆�씪寃쎈줈 :" +UPLOAD_PATH);
	    
	    String deleteFileName = UPLOAD_PATH+delFileName;
	    System.out.println("DeleteFileName : " + deleteFileName);
	    File deleteFile = new File(deleteFileName);
	    
        // �뙆�씪�씠 議댁옱�븯�뒗吏� 泥댄겕 議댁옱�븷寃쎌슦 true, 議댁옱�븯吏��븡�쓣寃쎌슦 false
        if(deleteFile.exists()) {
            
            // �뙆�씪�쓣 �궘�젣�빀�땲�떎.
            deleteFile.delete(); 
            
            System.out.println("�뙆�씪�쓣 �궘�젣�븯���뒿�땲�떎.");
            
        } else {
            System.out.println("�뙆�씪�씠 議댁옱�븯吏� �븡�뒿�땲�떎.");
            
        }
		
	    
		// �뙆�씪 �씠由� 蹂�寃�
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + uploadfile.getOriginalFilename();

	    System.out.println("saveName: {}"+saveName);

	    // ���옣�븷 File 媛앹껜瑜� �깮�꽦(猿띾뜲湲� �뙆�씪)
	    File saveFile = new File(UPLOAD_PATH,saveName); // ���옣�븷 �뤃�뜑 �씠由�, ���옣�븷 �뙆�씪 �씠由�

	    try {
	    	uploadfile.transferTo(saveFile); // �뾽濡쒕뱶 �뙆�씪�뿉 saveFile�씠�씪�뒗 猿띾뜲湲� �엯�옒
	    } catch (IOException e) {
	        e.printStackTrace();
	        return null;
	    }

	    return saveName;
	}
	

}
