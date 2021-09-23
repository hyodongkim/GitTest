package com.study.springboot.dto;

import lombok.Data;

@Data
public class MyBooksDto {
	private int 	hp_Index;
	private int 	book_Index;
	private String	book_Title;
	private String	book_Writer;
	private String	book_Image;
	
	public MyBooksDto() {	}

}
/*	hp_Index            number(6) primary key,
  	book_Index          number(6) not null,
  	book_Title          varchar2(20) not null,
  	book_Writer         varchar2(20) not null,
  	book_Image          varchar2(100) not null	 */

