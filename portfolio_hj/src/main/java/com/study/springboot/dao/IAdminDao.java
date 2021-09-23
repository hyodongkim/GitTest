package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.BookListDto;
import com.study.springboot.dto.BookReviewDto;
import com.study.springboot.dto.MemberDto;
import com.study.springboot.dto.NoticeDto;
import com.study.springboot.dto.QnADto;
import com.study.springboot.dto.QnA_AnswerDto;

@Mapper
public interface IAdminDao {
	// 관리자 로그인
	  public int adminLogin( String member_id, String member_pw);
	
	// 회원 목록
	  public ArrayList<MemberDto> memberlist();
	
	// 도서 목록
	  public ArrayList<BookListDto> booklist(); 
	// 도서 추가
	  public int addBook( BookListDto book_dto );
	// 도서 편집  
	  public void updateBook( String book_Title, String book_Writer, String book_Company, 
			  					String book_Image, String book_Content, String book_Introduce );
	// 도서 삭제
  	  public void deleteBook( int book_Index );
  	  
  	// 도서 리뷰 목록
  	  public ArrayList<BookReviewDto> reviewlist();
  	// 도서 리뷰 삭제
  	  public void deleteReview( int review_Index );
  	  
  	// 공지사항 목록 
  	  public ArrayList<NoticeDto> noticelist();
  	// 공지사항 추가하기
  	  public int addNotice( NoticeDto notice_dto );
  	// 공지사항 편집하기
  	  public void updateNotice( String notice_Title, String notice_Content );
  	// 공지사항 삭제하기
  	  public void deleteNotice( int notice_Index );	
  	  
  	// 1:1 문의 목록
  	  public ArrayList<QnADto> QnAlist();
  	// 1:1 문의 답변하기
  	  public int reply_QnAnwer( QnA_AnswerDto qna_Answer_dto );
  	// 1:1 문의 답변 편집하기
  	  public void updateReplyAnswer( int answer_Index, String qna_Answer );
}
