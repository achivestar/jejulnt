package com.pe.bluering.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.bluering.dao.mgDAO;
import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.mgVO;

@Service
public class MgServiceImpl implements MgService {

	@Autowired
	mgDAO mgdao;
	
	@Override
	public String create(mgVO mgvo) {
		int affectRowCount = this.mgdao.insert(mgvo);
		if(affectRowCount == 1) {
			return mgvo.getIdx().toString();
		}
		return null;
	}

	@Override
	public List<mgVO> list(mgVO mgvo) {
		return mgdao.selectList(mgvo);
	}

	@Override
	public mgVO detail(int idx) {
		return mgdao.selectDetail(idx);
	}

	@Override
	public Boolean update(mgVO mgvo) {
		int affectRowCount = mgdao.update(mgvo);
		return affectRowCount == 1;
	}

	@Override
	public String getDeleteFileName(Integer idx) {
		return mgdao.getDeleteFileName(idx);
	}

	@Override
	public Boolean delete(int idx) {
		int affectRowCount = mgdao.delete(idx);
		return affectRowCount == 1;

	}

	@Override
	public String getOriginFileName(Integer idx) {
		return mgdao.getOriginFileName(idx);
	}

	@Override
	public String getSaveFileName(Integer idx) {
		return mgdao.getSaveFileName(idx);
	}

	@Override
	public int count() {
		return mgdao.count();
	}
	
	@Override
	public int searchCount(String keyword) {
		System.out.println(" 서비스 searchCount실행 : "+keyword);
		return mgdao.searchCount(keyword);
	}

	@Override
	public adminVO login(adminVO adminvo) {
		return mgdao.login(adminvo);
	}

	@Override
	public mgVO print(int idx) {
		return  mgdao.print(idx);
	}




	



	


}
