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
  values( hp_Notice_Index.nextval, '����Ʈ ���� �ֽ��ϴ�.', '21�� ���� 11�ú��� 22�� ���� 10�ñ��� ����Ʈ ���� �ֽ��ϴ�. ���� ��Ź�帳�ϴ�.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '�̿� ��� ���� �ȳ�', '�̿� ����� ����Ǿ����ϴ�.', sysdate, 1 );
insert into hp_Notice( notice_Index, notice_Title, notice_Content, notice_Date, notice_Count )
  values( hp_Notice_Index.nextval, '���ã�� ����� ���� �߰��Ǿ����ϴ�.', '���ã�� ����� ���� �߰��Ǿ����ϴ�. ���� �̿� ��Ź�帳�ϴ�.', sysdate, 1 );

select * from hp_Notice;

commit;