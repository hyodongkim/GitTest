package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QnADto {
	private int 	qna_Index;
	private int		hp_Index;
	private String	hp_ID;
	private String	qna_Title;
	private String	qna_Content;
	private int 	answer_Check;
	private Date 	qna_Date;

	public QnADto()	{	}

}

/*	qna_Index           number(6) primary key,
  	hp_Index            number(6) not null,
  	hp_ID               varchar2(20) not null,
  	qna_Title           varchar2(20) not null,
  	qna_Content         varchar2(300) not null,
  	answer_Check        number(2) not null,
  	qna_Date            Date 	*/