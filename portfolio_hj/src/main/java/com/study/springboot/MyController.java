package com.study.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MyController {
	
	/* @Autowired
	  	private MemberService memberService;	*/
	
	@RequestMapping("/")
	public String root( RedirectAttributes redirect ) {
		
		return "redirect:index";
	}
	
	@RequestMapping("/index")
	public String index( HttpServletRequest req, Model model ) {
		// Alert 메시지 중복 제거
		String alertMessage = (String)req.getSession().getAttribute("alert");
		System.out.println( "index alertMessage : " + alertMessage );
		
		if( alertMessage != null ) {
			req.setAttribute( "alert", alertMessage );
			req.getSession().setAttribute( "alert", null );
		}
		
		return "index";
	}
	
	// 관리자
	  // 회원
		@RequestMapping("/admin/views/admin_member")
		public String admin_member( HttpServletRequest req, Model model ) {
			
			return "admin/views/admin_member";
		}
		
	  // 도서
		@RequestMapping("/admin/views/admin_book")
		public String admin_book( HttpServletRequest req, Model model ) {
			
			return "admin/views/admin_book";
		}
		
	  // 도서 리뷰	
		@RequestMapping("/admin/views/admin_review")
		public String admin_review( HttpServletRequest req, Model model ) {
			
			return "admin/views/admin_review";
		}

	  // 공지사항
		@RequestMapping("/admin/views/admin_notice")
		public String admin_notice( HttpServletRequest req, Model model ) {
			
			return "admin/views/admin_notice";
		}
		
	  // 1:1 문의	
		@RequestMapping("/admin/views/admin_qna")
		public String admin_qna( HttpServletRequest req, Model model ) {
			
			return "admin/views/admin_qna";
		}

	
	// 사용자
	 // 메인화면	
		@RequestMapping("/user/views/main")
		public String main( HttpServletRequest req, Model model ) {
			
			return "user/views/main";
		}
	  
	 // 로그인	
		@RequestMapping("/user/views/member/login")
		public String login( HttpServletRequest req, Model model ) {
			
			return "user/views/member/login";
		}	
		
	 // 회원가입	
		@RequestMapping("/user/views/member/join")
		public String join( HttpServletRequest req, Model model ) {
			
			return "user/views/member/join";
		}
		
	 // 마이페이지	
		@RequestMapping("/user/views/member/mypage")
		public String mypage( HttpServletRequest req, Model model ) {
			
			return "user/views/member/mypage";
		}	

	 // 즐겨찾기	
		@RequestMapping("/user/views/member/favorites")
		public String favorites( HttpServletRequest req, Model model ) {
			
			return "user/views/member/favorites";
		}
		
	 // 국내도서	
		@RequestMapping("/user/views/books/books_korea")
		public String books_korea( HttpServletRequest req, Model model ) {
			
			return "user/views/books/books_korea";
		}
		
	 // 국외도서	
		@RequestMapping("/user/views/books/books_overseas")
		public String books_overseas( HttpServletRequest req, Model model ) {
			
			return "user/views/books/books_overseas";
		}
		
	 // 도서 상세 페이지
		@RequestMapping("/user/views/books/books_introduction")
		public String books_introduction( HttpServletRequest req, Model model ) {
			
			return "user/views/books/books_introduction";
		}
		
	 
		
		
	  
		
	  
	
}