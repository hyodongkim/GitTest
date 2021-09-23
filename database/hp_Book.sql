drop table hp_Book;

Create table hp_Book(
  book_Index            number(6) primary key,
  book_Title            varchar2(20) not null,
  book_Writer           varchar2(20) not null,
  book_Company          varchar2(20) not null,
  book_Image            varchar2(100) not null,
  book_Content          varchar2(300) not null,
  book_Introduce        varchar2(1000) not null,
  book_review           varchar2(300)
);

drop sequence hp_Book_Book_Index;
create sequence hp_Book_Book_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category ) 
  values( hp_Book_Book_Index.nextval, '1좋아', 'hyo1', '11출판사', '1이좋아.png', '1좋아하는내용.pdf', '1좋아하는사람봐라', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '2좋아', 'hyo2', '22출판사', '2가좋아.png', '2좋아하는내용.pdf', '2좋아하는사람봐라', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '3좋아', 'hyo3', '33출판사', '3이좋아.png', '3좋아하는내용.pdf', '3좋아하는사람봐라', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '4좋아', 'hyo4', '44출판사', '4가좋아.png', '4좋아하는내용.pdf', '4좋아하는사람봐라', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '5좋아', 'hyo5', '55출판사', '5가좋아.png', '5좋아하는내용.pdf', '5좋아하는사람봐라', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '6좋아', 'hyo6', '66출판사', '6이좋아.png', '6좋아하는내용.pdf', '6좋아하는사람봐라', 0 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '7좋아', 'hyo7', '77출판사', '7이좋아.png', '7좋아하는내용.pdf', '7좋아하는사람봐라', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '8좋아', 'hyo8', '88출판사', '8이좋아.png', '8좋아하는내용.pdf', '8좋아하는사람봐라', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '9좋아', 'hyo9', '99출판사', '9가좋아.png', '9좋아하는내용.pdf', '9좋아하는사람봐라', 1 );
  
select * from hp_Book;
delete from hp_book;

Update hp_book set book_company = '11출판사' where book_company = '망함';

alter table hp_book add book_Category number(3) not null;

commit;
