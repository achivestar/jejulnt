package com.pe.bluering.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.memberVO;
import com.pe.bluering.vo.mgVO;
import com.pe.bluering.vo.replyVO;
import com.pe.bluering.vo.thumbVO;

public interface ThumbnailService {

	void regist(thumbVO thumbvo);

	int getIdx();

	List<thumbVO> getActiveList(thumbVO thumbvo);

	thumbVO modify(int idx);

	int update(thumbVO thumbvo);

	String getDeleteFileName(Integer idx);

	Boolean delete(int idx);

	String getOriginFileName(Integer idx);

	String getSaveFileName(Integer idx);

	int getCount();

	void updateHit(int idx);

	void memberRegist(memberVO membervo);

	memberVO signin(memberVO membervo);

	void signout(HttpSession session);

	void replayInsert(replyVO replyvo);

	List<replyVO> getReply(int idx);
	
	List<replyVO> getReply2(int idx);

	int getReplyCount(int idx);
	
	int getMaxRepleIdx();

	void repleModify(replyVO replyvo);

	void repleDelete(replyVO replyvo);
	
	void repleDelete2(replyVO replyvo);

	void noticeRegist(thumbVO thumbvo);

	List<thumbVO> getNoticeList(thumbVO thumbvo);

	thumbVO noticeModify(int idx);

	int noticeUpdate(thumbVO thumbvo);

	Boolean noticeDelete(int idx);

	int getNoticeCount();

	int getNoticeIdx();

	String getDeleteNoticeFileName(Integer idx);

	String getOriginNoticeFileName(Integer idx);

	String getSaveNoticeFileName(Integer idx);

	List<thumbVO> getActiveListIndex(thumbVO thumbvo);

	List<thumbVO> getNoticeListIndex(thumbVO thumbvo);

	List<thumbVO> getCommentCount(thumbVO thumbvo);

	int getActiveCount();

	List<replyVO> getReRepleCount(replyVO replyvo);

	String isEmailUser(String e_mail);

	List<replyVO> getRepleAll(replyVO replyvo);

	int getMemberCount();

	List<memberVO> getMember(memberVO membervo);

	memberVO emailFind(memberVO membervo);

	memberVO passwordFind(memberVO membervo);








}
