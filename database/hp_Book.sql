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
  values( hp_Book_Book_Index.nextval, '1����', 'hyo1', '11���ǻ�', '1������.png', '1�����ϴ³���.pdf', '1�����ϴ»������', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '2����', 'hyo2', '22���ǻ�', '2������.png', '2�����ϴ³���.pdf', '2�����ϴ»������', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '3����', 'hyo3', '33���ǻ�', '3������.png', '3�����ϴ³���.pdf', '3�����ϴ»������', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '4����', 'hyo4', '44���ǻ�', '4������.png', '4�����ϴ³���.pdf', '4�����ϴ»������', 0);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '5����', 'hyo5', '55���ǻ�', '5������.png', '5�����ϴ³���.pdf', '5�����ϴ»������', 1);
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '6����', 'hyo6', '66���ǻ�', '6������.png', '6�����ϴ³���.pdf', '6�����ϴ»������', 0 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '7����', 'hyo7', '77���ǻ�', '7������.png', '7�����ϴ³���.pdf', '7�����ϴ»������', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '8����', 'hyo8', '88���ǻ�', '8������.png', '8�����ϴ³���.pdf', '8�����ϴ»������', 1 );
insert into hp_Book( book_Index, book_Title, book_Writer, book_Company, book_Image, book_Content, book_Introduce, book_Category )
  values( hp_Book_Book_Index.nextval, '9����', 'hyo9', '99���ǻ�', '9������.png', '9�����ϴ³���.pdf', '9�����ϴ»������', 1 );
  
select * from hp_Book;
delete from hp_book;

Update hp_book set book_company = '11���ǻ�' where book_company = '����';

alter table hp_book add book_Category number(3) not null;

commit;
