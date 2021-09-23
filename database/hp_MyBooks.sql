Create table hp_Mybooks(
  hp_Index            number(6) primary key,
  book_Index          number(6) not null,
  book_Title          varchar2(20) not null,
  book_Writer         varchar2(20) not null,
  book_Image          varchar2(100) not null,
  
  Constraint hp_Mybooks_FK_hp foreign key(hp_Index) references hp_Member(hp_Index),
  Constraint hp_Mybooks_FK_book foreign key(book_Index) references hp_Book(book_Index)
);

insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image ) 
  values( 1, 1, '1좋아', 'hyo1', '1이좋아.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image ) 
  values( 4, 3, '3좋아', 'hyo3', '3이좋아.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image ) 
  values( 7, 5, '5좋아', 'hyo5', '5가좋아.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image ) 
  values( 9, 7, '7좋아', 'hyo7', '7이좋아.png' );
  
select * from hp_Mybooks;

drop table hp_MyBooks;
drop sequence hp_Mybooks_hp_Index;

commit;