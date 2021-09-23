package com.study.springboot.dto;

import lombok.Data;

@Data
public class BookListDto {
	private int 	book_Index;
	private String 	book_Title;
	private String 	book_Writer;
	private String 	book_Company;
	private String 	book_Content;
	private String 	book_Introduce;
	private String 	book_review;
	private String 	book_Image;

	public BookListDto() {		}

}

/*	book_Index            number(6) primary key,
  	book_Title            varchar2(20) not null,
  	book_Writer           varchar2(20) not null,
  	book_Company          varchar2(20) not null,
  	book_Image            varchar2(100) not null,
  	book_Content          varchar2(300) not null,
  	book_Introduce        varchar2(1000) not null,
  	book_review           varchar2(300)			  */
