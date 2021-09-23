drop table hp_QnA;

Create table hp_QnA(
  qna_Index           number(6) primary key,
  hp_Index            number(6) not null,
  hp_ID               varchar2(20) not null,
  qna_Title           varchar2(20) not null,
  qna_Content         varchar2(300) not null,
  answer_Check        number(2) not null,
  qna_Date            Date,
  
  Constraint hp_QnA_FK foreign key(hp_Index) references hp_Member(hp_Index)
);

drop sequence hp_QnA_qna_Index;
create sequence hp_QnA_qna_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date) 
  values(hp_QnA_qna_Index.nextval, 1, 'kim1', 'aaaa', 'AAAA', 0, Sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date) 
  values(hp_QnA_qna_Index.nextval, 4, 'kim4', 'bbbb', 'BBBB', 2, Sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date) 
  values(hp_QnA_qna_Index.nextval, 6, 'kim6', 'cccc', 'CCCC', 1, Sysdate);
insert into hp_qna( qna_Index, hp_Index, hp_ID, qna_Title, qna_Content, answer_Check, qna_Date) 
  values(hp_QnA_qna_Index.nextval, 8, 'kim8', 'dddd', 'DDDD', 0, Sysdate);

select * from hp_qna;

commit;