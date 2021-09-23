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
  values( 1, 1, '1����', 'hyo1', '1������.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image ) 
  values( 4, 3, '3����', 'hyo3', '3������.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image ) 
  values( 7, 5, '5����', 'hyo5', '5������.png' );
insert into hp_Mybooks( hp_Index, book_Index, book_Title, book_Writer, book_Image ) 
  values( 9, 7, '7����', 'hyo7', '7������.png' );
  
select * from hp_Mybooks;

drop table hp_MyBooks;
drop sequence hp_Mybooks_hp_Index;

commit;