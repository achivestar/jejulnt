package com.pe.bluering.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class memberVO {

	private int idx;
	private String email;
	private String password;
	private String name;
	private String phone;
	private String regdate;
	
	private int displayPost;
	private int postNum;
	private int pageNum;
	private int pnum=1;
	private int count;

}
