package com.pe.bluering.service;

import java.util.ArrayList;
import java.util.List;

import com.pe.bluering.vo.adminVO;
import com.pe.bluering.vo.mgVO;

public interface MgService {

	String create(mgVO mgvo);

	List<mgVO> list(mgVO mgvo);

	mgVO detail(int idx);

	Boolean update(mgVO mgvo);

	String getDeleteFileName(Integer idx);

	Boolean delete(int idx);

	String getOriginFileName(Integer idx);

	String getSaveFileName(Integer idx);

	int searchCount(String keyword);

	int count();

	adminVO login(adminVO adminvo);

	mgVO print(int idx);

}
