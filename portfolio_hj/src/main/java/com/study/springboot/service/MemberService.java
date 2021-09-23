package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IMemberDao;
import com.study.springboot.dto.MemberDto;

@Component
public class MemberService {
	@Autowired
	private IMemberDao memberDao;
	
	// 회원로그인
	public int login( String hp_ID, String hp_Password ) {
		int result = 0;
		
		int count = memberDao.login( hp_ID, hp_Password );
		if( count>0 ) {
			result = 1;
		}
		return result;
	}
	
	// ID 찾기
	public String findID( String hp_Name, String hp_Email ) {
		List<MemberDto> member_list = memberDao.findID( hp_Name, hp_Email );
		
		if( member_list != null ) {
			if( member_list.size() > 0 ) {
				return member_list.get(0).getHp_ID();
			}
		}
		
		return "";
	}
	
	// Password 찾기
	public String findPassword( String hp_Name, String hp_ID, String hp_Email ) {
		List<MemberDto> list = memberDao.findPassword( hp_Name, hp_ID, hp_Email );
		
		if( list !=null ) {
			if( list.size() > 0 ) {
				return list.get(0).getHp_Password();
			}
		}
		
		return "";
	}
	
	// ID 중복체크
	public int idCheckAjax( String hp_ID ) {
		int result = 0;
		
		return result;
	}
	
	// 회원가입
	public int join( String hp_ID, String hp_Password, String hp_Name, 
					int hp_Birthday_Year, int hp_Birthday_Month, int hp_Sex, String hp_Email, String hp_Phone) {
		int result = 0;
		
		MemberDto member_dto = new MemberDto();
		 member_dto.setHp_ID( hp_ID );
		 member_dto.setHp_Password( hp_Password );
		 member_dto.setHp_Name( hp_Name );
		 member_dto.setHp_Birthday_Year( hp_Birthday_Year );
		 member_dto.setHp_Birthday_Month( hp_Birthday_Month );
		 member_dto.setHp_Sex( hp_Sex );
		 member_dto.setHp_Email( hp_Email );
		 member_dto.setHp_Phone( hp_Phone );
		
		 try { 
			 result = memberDao.join( member_dto );
		 } catch( Exception e ) {
			 e.printStackTrace();
		 }
		 
		return result;
			
	}
}
