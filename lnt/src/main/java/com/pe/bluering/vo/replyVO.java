package com.pe.bluering.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class replyVO {

	private int idx;
	private int num;
	private String contents;
	private String writer;
	private String regdate;
	private int orders;
	private int level;
	private int groupNum;
}
