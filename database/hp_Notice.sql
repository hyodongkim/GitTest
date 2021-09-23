drop table hp_Notice;

Create table hp_Notice (
  notice_Index      number(6),
  notice_Title      varchar2(100) not null,
  notice_Content    varchar2(1000) not null,
  notice_Date       date default sysdate,
  notice_Count      number(6)
 
);

drop sequence hp_Notice_Index;
create sequence hp_Notice_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '사이트 점검 있습니다.', '21일 오후 11시부터 22일 오전 10시까지 사이트 점검 있습니다. 양해 부탁드립니다.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '이용 약관 변경 안내', '이용 약관이 변경되었습니다.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '즐겨찾기 기능이 새로 추가되었습니다.', '즐겨찾기 기능이 새로 추가되었습니다. 많은 이용 부탁드립니다.', sysdate, 1 );

select * from hp_Notice;

commit;