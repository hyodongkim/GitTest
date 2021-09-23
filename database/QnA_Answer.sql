drop table QnA_Answer;

Create table QnA_Answer(
  answer_Index        number(6) primary key,
  qna_Index           number(6) not null, 
  qna_Answer          varchar2(1000) not null,
  answer_Date         Date, 
  
  Constraint QnA_Answer_FK foreign key(qna_Index) references hp_QnA(qna_Index)
);

drop sequence QnA_Answer_Index;
create sequence QnA_Answer_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  1, '가바나다라', sysdate );
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  3, '이나가아', sysdate );
insert into QnA_Answer(answer_Index, qna_Index, qna_Answer, answer_Date )
  values( QnA_Answer_Index.nextval,  4, '바니타자', sysdate );

select * from QnA_Answer;

commit;