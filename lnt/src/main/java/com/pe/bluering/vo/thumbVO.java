package com.pe.bluering.vo;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class thumbVO {

	private Integer idx;
	private Integer num;
	private String subject;
	private String thumb;
	private String contents;
	private String regdate;
	private String writer;
	private Integer hit;
	private String saveFileName;
	private String originalFileName;
	
	private int displayPost;
	private int postNum;
	private int pageNum;
	private int pnum=1;
	private int count;
	
}
