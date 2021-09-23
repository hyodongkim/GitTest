package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeDto {
	private int		notice_Index;
	private String	notice_Title;
	private String	notice_Content;
	private Date	notice_Date;
	private int		notice_Count;

	public NoticeDto() {	}

}

/* 	notice_Index      number(6),
  	notice_Title      varchar2(100) not null,
  	notice_Content    varchar2(1000) not null,
  	notice_Date       date default sysdate,
  	notice_Count      number(6)	 */
