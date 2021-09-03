package com.pe.bluering.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.ThumbDAO;
import com.pe.bluering.vo.memberVO;
import com.pe.bluering.vo.mgVO;
import com.pe.bluering.vo.replyVO;
import com.pe.bluering.vo.thumbVO;

@Service
public class ThumbnailServiceImpl implements ThumbnailService {

	@Autowired
	ThumbDAO thumbDao;


	@Override
	public void regist(thumbVO thumbvo) {
		thumbDao.activeInsert(thumbvo);
	}

	@Override
	public int getIdx() {
		return thumbDao.getIdx();
	}

	@Override
	public List<thumbVO> getActiveList(thumbVO thumbvo) {
		return thumbDao.getActiveList(thumbvo);
	}

	@Override
	public thumbVO modify(int idx) {
		return thumbDao.modifyActive(idx);
	}

	@Override
	public int update(thumbVO thumbvo) {
		return thumbDao.updateActive(thumbvo);
	}
	
	@Override
	public String getDeleteFileName(Integer idx) {
		return thumbDao.getDeleteFileName(idx);
	}

	@Override
	public Boolean delete(int idx) {
		int affectRowCount = thumbDao.delete(idx);
		return affectRowCount == 1;

	}

	@Override
	public String getOriginFileName(Integer idx) {
		return thumbDao.getOriginFileName(idx);
	}

	@Override
	public String getSaveFileName(Integer idx) {
		return thumbDao.getSaveFileName(idx);
	}

	@Override
	public int getCount() {
		return thumbDao.getCount();
	}

	@Override
	public void updateHit(int idx) {
		 thumbDao.updateHit(idx);
	}

	@Override
	public void memberRegist(memberVO membervo) {
		thumbDao.memberRegist(membervo);
		
	}

	@Override
	public memberVO signin(memberVO membervo) {
		return thumbDao.signin(membervo);
	}

	@Override
	public void signout(HttpSession session) {
		session.invalidate();
	}

	@Override
	public void replayInsert(replyVO replyvo) {
		thumbDao.replyInsert(replyvo);
	}

	@Override
	public List<replyVO> getReply(int idx) {
		return thumbDao.getReply(idx);
	}
	
	@Override
	public List<replyVO> getReply2(int idx) {
		return thumbDao.getReply2(idx);
	}


	@Override
	public int getReplyCount(int idx) {
		return thumbDao.replyCount(idx);
	}
	

	@Override
	public int getMaxRepleIdx() {
			return thumbDao.getMaxRepleIdx();
	}

	


	@Override
	public void repleModify(replyVO replyvo) {
		 thumbDao.repleModify(replyvo);
	}

	@Override
	public void repleDelete(replyVO replyvo) {
		 thumbDao.repleDelete(replyvo);
	}
	
	@Override
	public void repleDelete2(replyVO replyvo) {
		thumbDao.repleDelete2(replyvo);
	}




	@Override
	public void noticeRegist(thumbVO thumbvo) {
		thumbDao.noticeInsert(thumbvo);
	}

	@Override
	public List<thumbVO> getNoticeList(thumbVO thumbvo) {
		return thumbDao.getNoticeList(thumbvo);
	}

	@Override
	public thumbVO noticeModify(int idx) {
		return thumbDao.modifyNotice(idx);
	}

	@Override
	public int noticeUpdate(thumbVO thumbvo) {
		return thumbDao.updateNotice(thumbvo);
	}

	@Override
	public Boolean noticeDelete(int idx) {
		int affectRowCount = thumbDao.noticeDelete(idx);
		return affectRowCount == 1;

	}

	@Override
	public int getNoticeCount() {
		return thumbDao.getNoticeCount();
	}

	@Override
	public int getNoticeIdx() {
		return thumbDao.getNoticeIdx();
	}

	@Override
	public String getDeleteNoticeFileName(Integer idx) {
			return thumbDao.getDeleteNoticeFileName(idx);
	}

	@Override
	public String getOriginNoticeFileName(Integer idx) {
		return thumbDao.getOriginNoticeFileName(idx);
	}

	@Override
	public String getSaveNoticeFileName(Integer idx) {
		return thumbDao.getSaveNoticeFileName(idx);
	}

	@Override
	public List<thumbVO> getActiveListIndex(thumbVO thumbvo) {
		return thumbDao.getActiveListIndex(thumbvo);
	}

	@Override
	public List<thumbVO> getNoticeListIndex(thumbVO thumbvo) {
		return thumbDao.getNoticeListIndex(thumbvo);
	}

	@Override
	public List<thumbVO> getCommentCount(thumbVO thumbvo) {
		return thumbDao.getCommentCount(thumbvo);
	}
	
	

	@Override
	public int getActiveCount() {
		return thumbDao.getActiveCount();
	}

	@Override
	public List<replyVO> getReRepleCount(replyVO replyvo) {
		return thumbDao.getReRepleCount(replyvo);
	}

	@Override
	public String isEmailUser(String e_mail) {
		return thumbDao.isEmailUser(e_mail);
	}

	@Override
	public List<replyVO> getRepleAll(replyVO replyvo) {
		return thumbDao.getRepleAll(replyvo);
	}

	@Override
	public int getMemberCount() {
		return thumbDao.getMemberCount();
	}

	@Override
	public List<memberVO> getMember(memberVO membervo) {
		return thumbDao.getMember(membervo);
	}

	@Override
	public memberVO emailFind(memberVO membervo) {
		return thumbDao.emailFind(membervo);
	}

	@Override
	public memberVO passwordFind(memberVO membervo) {
		return thumbDao.passwordFind(membervo);
	}




	
}
