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

	public MemberDto(int hp_Index, String hp_ID, String hp_Password, String hp_Name, int hp_Birthday_Year,
			int hp_Birthday_Month, int hp_Sex, String hp_Email, String hp_Phone, int hp_Ticket, int hp_Auth) {
		super();
		this.hp_Index = hp_Index;
		this.hp_ID = hp_ID;
		this.hp_Password = hp_Password;
		this.hp_Name = hp_Name;
		this.hp_Birthday_Year = hp_Birthday_Year;
		this.hp_Birthday_Month = hp_Birthday_Month;
		this.hp_Sex = hp_Sex;
		this.hp_Email = hp_Email;
		this.hp_Phone = hp_Phone;
		this.hp_Ticket = hp_Ticket;
		this.hp_Auth = hp_Auth;
	}

	public int getHp_Index() {
		return hp_Index;
	}

	public void setHp_Index(int hp_Index) {
		this.hp_Index = hp_Index;
	}

	public String getHp_ID() {
		return hp_ID;
	}

	public void setHp_ID(String hp_ID) {
		this.hp_ID = hp_ID;
	}

	public String getHp_Password() {
		return hp_Password;
	}

	public void setHp_Password(String hp_Password) {
		this.hp_Password = hp_Password;
	}

	public String getHp_Name() {
		return hp_Name;
	}

	public void setHp_Name(String hp_Name) {
		this.hp_Name = hp_Name;
	}

	public int getHp_Birthday_Year() {
		return hp_Birthday_Year;
	}

	public void setHp_Birthday_Year(int hp_Birthday_Year) {
		this.hp_Birthday_Year = hp_Birthday_Year;
	}

	public int getHp_Birthday_Month() {
		return hp_Birthday_Month;
	}

	public void setHp_Birthday_Month(int hp_Birthday_Month) {
		this.hp_Birthday_Month = hp_Birthday_Month;
	}

	public int getHp_Sex() {
		return hp_Sex;
	}

	public void setHp_Sex(int hp_Sex) {
		this.hp_Sex = hp_Sex;
	}

	public String getHp_Email() {
		return hp_Email;
	}

	public void setHp_Email(String hp_Email) {
		this.hp_Email = hp_Email;
	}

	public String getHp_Phone() {
		return hp_Phone;
	}

	public void setHp_Phone(String hp_Phone) {
		this.hp_Phone = hp_Phone;
	}

	public int getHp_Ticket() {
		return hp_Ticket;
	}

	public void setHp_Ticket(int hp_Ticket) {
		this.hp_Ticket = hp_Ticket;
	}

	public int getHp_Auth() {
		return hp_Auth;
	}

	public void setHp_Auth(int hp_Auth) {
		this.hp_Auth = hp_Auth;
	}
	
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