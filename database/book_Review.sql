drop table Book_review;

Create table Book_review(
  review_Index        number(10) primary key, 
  book_Index          number(6) not null,
  hp_Index            number(6) not null,
  book_Title          varchar2(20) not null,
  review_name         varchar2(20) not null,
  review_password     varchar2(20) not null,
  book_review         varchar2(1000) not null,
  
  Constraint Book_review_Book foreign key(book_Index) references hp_Book(book_Index),
  Constraint Book_review_Member foreign key(hp_Index) references hp_Member(hp_Index)
);

drop sequence Book_review_review_Index;
create sequence Book_review_review_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 1, 3, '3����', 'abc', '123456', '�����ٶ�' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 3, 2, '2����', 'qwert', '56789', '���ٶ�' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 7, 6, '6����', 'lkjhg', 'ertyuio', '��ľ߹�' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 8, 9, '9����', 'zxcvbn', 'zrtyhn', '����_����_�ʹ�' );
insert into Book_review( review_Index, hp_Index, book_Index, book_Title, review_name, review_password, book_review )
  values( Book_review_review_Index.nextval, 9, 1, '1����', 'vguikm', 'sertyuhjn', '��Ʈ������' );

select * from Book_review;
drop table Book_review;


drop sequence Book_review_hp_Index;
alter table Book_review Drop Constraint Book_review_FK;

commit;
