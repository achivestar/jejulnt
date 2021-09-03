package com.pe.bluering.dao;



import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pe.bluering.vo.memberVO;
import com.pe.bluering.vo.mgVO;
import com.pe.bluering.vo.replyVO;
import com.pe.bluering.vo.thumbVO;

@Repository
public class ThumbDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;


	public void activeInsert(thumbVO thumbvo) {
		 this.sqlSessionTemplate.insert("thumb.contentsInsert",thumbvo);
	}

	public int getIdx() {
		return this.sqlSessionTemplate.selectOne("thumb.getIdx");
	}

	public List<thumbVO> getActiveList(thumbVO thumbvo) {
		return this.sqlSessionTemplate.selectList("thumb.selectActiveList",thumbvo);
	}

	public thumbVO modifyActive(int idx) {
		return this.sqlSessionTemplate.selectOne("thumb.modifyActive",idx);
	}

	public int updateActive(thumbVO thumbvo) {
		return this.sqlSessionTemplate.update("thumb.updateActive",thumbvo);
	}
	
	public String getDeleteFileName(Integer idx) {
		return sqlSessionTemplate.selectOne("thumb.getDeleteFileName",idx);
	}

	public int delete(int idx) {
		return sqlSessionTemplate.update("thumb.delete",idx);
	}

	public String getSaveFileName(Integer idx) {
		return sqlSessionTemplate.selectOne("thumb.getSaveFileName",idx);
	}

	public String getOriginFileName(Integer idx) {
		return sqlSessionTemplate.selectOne("thumb.getOriginFileName",idx);
	}

	public int getCount() {
		return sqlSessionTemplate.selectOne("thumb.getCount");
	}

	public Object updateHit(int idx) {
		return sqlSessionTemplate.update("thumb.updateHit",idx);
	}

	public void memberRegist(memberVO membervo) {
		sqlSessionTemplate.insert("thumb.memberReigst",membervo);

	}

	public memberVO signin(memberVO membervo) {
		return sqlSessionTemplate.selectOne("thumb.signin",membervo);
	}

	public void replyInsert(replyVO replyvo) {
		sqlSessionTemplate.insert("thumb.replyInsert",replyvo);
	}



	public int replyCount(int idx) {
		return sqlSessionTemplate.selectOne("thumb.replyCount",idx);
	}

	public List<replyVO> getReply(int idx) {
		return sqlSessionTemplate.selectList("thumb.getReply",idx);
	}
	

	public List<replyVO> getReply2(int idx) {
		return sqlSessionTemplate.selectList("thumb.getReply2",idx);
	}
	

	public int getMaxRepleIdx() {
		return sqlSessionTemplate.selectOne("thumb.getMaxRepleIdx");
	}



	public void repleModify(replyVO replyvo) {
		sqlSessionTemplate.update("thumb.repleModify",replyvo);
	}

	public void repleDelete(replyVO replyvo) {
		sqlSessionTemplate.delete("thumb.repleDelete",replyvo);
	}
	
	public void repleDelete2(replyVO replyvo) {
		sqlSessionTemplate.delete("thumb.repleDelete2",replyvo);
	}


	public void noticeInsert(thumbVO thumbvo) {
		this.sqlSessionTemplate.insert("thumb.noticeInsert",thumbvo);
	}

	public List<thumbVO> getNoticeList(thumbVO thumbvo) {
		return this.sqlSessionTemplate.selectList("thumb.selectNoticeList",thumbvo);
	}

	public thumbVO modifyNotice(int idx) {
		return this.sqlSessionTemplate.selectOne("thumb.modifyNotice",idx);
	}

	public int updateNotice(thumbVO thumbvo) {
		return this.sqlSessionTemplate.update("thumb.updateNotice",thumbvo);
	}

	public int noticeDelete(int idx) {
		return sqlSessionTemplate.update("thumb.noticeDelete",idx);
	}

	public int getNoticeCount() {
		return sqlSessionTemplate.selectOne("thumb.getNoticeCount");
	}

	public int getNoticeIdx() {
		return this.sqlSessionTemplate.selectOne("thumb.getNoticeIdx");
	}

	public String getDeleteNoticeFileName(Integer idx) {
		return sqlSessionTemplate.selectOne("thumb.getDeleteNoticeFileName",idx);
	}

	public String getOriginNoticeFileName(Integer idx) {
		return sqlSessionTemplate.selectOne("thumb.getOriginNoticeFileName",idx);
	}

	public String getSaveNoticeFileName(Integer idx) {
		return sqlSessionTemplate.selectOne("thumb.getSaveNoticeFileName",idx);
	}

	public List<thumbVO> getActiveListIndex(thumbVO thumbvo) {
		return this.sqlSessionTemplate.selectList("thumb.selectActiveListIndex",thumbvo);
	}

	public List<thumbVO> getNoticeListIndex(thumbVO thumbvo) {
		return this.sqlSessionTemplate.selectList("thumb.selectNoticeListIndex",thumbvo);
	}

	public int getActiveListComment(thumbVO thumbvo) {
		return this.sqlSessionTemplate.selectOne("thumb.getActiveListComment",thumbvo);
	}

	public List<thumbVO> getCommentCount(thumbVO thumbvo) {
		return this.sqlSessionTemplate.selectList("thumb.getCommentCount",thumbvo);
	}

	public int getActiveCount() {
		return this.sqlSessionTemplate.selectOne("thumb.getActiveCount");
	}

	public List<replyVO> getReRepleCount(replyVO replyvo) {
		return this.sqlSessionTemplate.selectList("thumb.getReRepleCount",replyvo);
	}

	public String isEmailUser(String e_mail) {
		return this.sqlSessionTemplate.selectOne("thumb.isEmailUser",e_mail);
	}

	public List<replyVO> getRepleAll(replyVO replyvo) {
		return this.sqlSessionTemplate.selectList("thumb.getRepleAll",replyvo);
	}

	public int getMemberCount() {
		return sqlSessionTemplate.selectOne("thumb.getMemberCount");
	}

	public List<memberVO> getMember(memberVO membervo) {
		return this.sqlSessionTemplate.selectList("thumb.getMember",membervo);
	}

	public memberVO emailFind(memberVO membervo) {
		return sqlSessionTemplate.selectOne("thumb.emailFind",membervo);
	}

	public memberVO passwordFind(memberVO membervo) {
		return sqlSessionTemplate.selectOne("thumb.passwordFind",membervo);
	}

	

}
