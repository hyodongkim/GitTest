package com.study.springboot.dto;

import lombok.Data;

@Data
public class MemberDto {
	private int 	hp_Index;
	private String 	hp_ID;
	private String 	hp_Password;
	private String 	hp_Name;
	private int 	hp_Birthday_Year;
	private int 	hp_Birthday_Month;
	private int 	hp_Sex;
	private String 	hp_Email;
	private String 	hp_Phone;
	private int 	hp_Ticket;
	private int 	hp_Auth;
	
	public MemberDto() {	}

}

/* 	hp_Index          	number(6) primary key,
	hp_ID             	varchar2(20),
	hp_Password       	varchar2(30),
	hp_Name           	varchar2(20),
	hp_Birthday_Year  	number(4),
	hp_Birthday_Month 	number(2),
	hp_Sex            	varchar2(10),
	hp_Email         	varchar2(40),
	hp_Phone          	varchar2(15),
	hp_Ticket	      	number(2),
	hp_Auth				number(2)	*/