package com.study.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QnA_AnswerDto {
	private int		answer_Index;
	private int		qna_Index;
	private String	qna_Answer;
	private Date 	answer_Date;
	
	public QnA_AnswerDto() {		}
	
}

/*	answer_Index        number(6) primary key,
  	qna_Index           number(6) not null, 
  	qna_Answer          varchar2(1000) not null,
  	answer_Date         Date		*/