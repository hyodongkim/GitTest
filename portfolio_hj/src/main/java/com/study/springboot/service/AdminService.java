package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.study.springboot.dao.IAdminDao;
import com.study.springboot.dto.BookListDto;
import com.study.springboot.dto.MemberDto;

@Component
public class AdminService {
	@Autowired
	private IAdminDao adminDao;
	
	// 관리자 로그인
	  public int adminLogin( String hp_ID, String hp_Password ) {
		  int result = 0;
		  
		  if ( hp_ID == "admin" && hp_Password == "password" ) {
			  int count = adminDao.adminLogin( hp_ID, hp_Password );
			  if( count > 0 ) {
				  result = 1;
			  }
		  } else {
			  result = 0;
		  }

		return result;
	  }
	
	  
	// 회원 목록 
	  public List<MemberDto> memberlist() {
		  List<MemberDto> memberlist = adminDao.memberlist();
		  return memberlist;
	  }
	
	  
	// 도서 목록 
	  public List<BookListDto> booklist() {
		  List<BookListDto> booklist = adminDao.booklist();
		  return booklist;
	  }
	  
	// 도서 추가 
	  public int addBook( String book_Title, String book_Writer, String book_Company,
			  				String book_Content, String book_Introduce, String book_review, String book_Image ) {
		  int result = 0;
		  
		  BookListDto  bookDto = new BookListDto();
		  bookDto.setBook_Title( book_Title );
		  bookDto.setBook_Writer( book_Writer );
		  bookDto.setBook_Company( book_Company );
		  bookDto.setBook_Content( book_Content );
		  bookDto.setBook_Introduce( book_Introduce );
		  bookDto.setBook_Image( book_Image );
		  
		  try {
			  result = adminDao.addBook( bookDto );
		  } catch( Exception e ) { 
			  e.printStackTrace();
		  }
		  
		  return result;
	  }
	  
	// 도서 편집
	  // public 
	
}
