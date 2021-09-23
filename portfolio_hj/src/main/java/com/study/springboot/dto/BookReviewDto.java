package com.study.springboot.dto;

import lombok.Data;

@Data
public class BookReviewDto {
	private int		review_Index;
	private int 	book_Index;
	private int 	hp_Index;
	private String	book_Title;
	private String	review_name;
	private String	review_password;
	private String	book_review;

	public BookReviewDto() {	}
	
}

/*	review_Index        number(10) primary key, 
  	book_Index          number(6) not null,
  	hp_Index            number(6) not null,
  	book_Title          varchar2(20) not null,
  	review_name         varchar2(20) not null,
  	review_password     varchar2(20) not null,
  	book_review         varchar2(1000) not null	 */