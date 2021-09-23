drop table hp_Member;

Create table hp_Member(
    hp_Index                number(6) primary key,
    hp_ID                   varchar2(20) not null,
    hp_Password             varchar2(30) not null,
    hp_Name                 varchar2(20) not null,
    hp_Birthday_Year        number(15) not null,
    hp_Birthday_Month       number(15) not null,
    hp_Sex                  number(3) not null,
    hp_Email                varchar2(40) not null,
    hp_Phone                varchar2(20) not null,
    hp_Ticket               number(6) not null,
    hp_Auth                 number(6) not null
);

drop sequence hp_Member_hp_Index;
create sequence hp_Member_hp_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth ) 
    values(hp_Member_hp_Index.nextval, 'kim1', '1111', 'hyodong1', 1996, 01, 1, 'kim1@email.com', '1111-1111', 1, 1 );
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth ) 
    values(hp_Member_hp_Index.nextval, 'kim2', '2222', 'hyodong2', 1996, 01, 1, 'kim2@email.com', '2222-2222', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth ) 
    values(hp_Member_hp_Index.nextval, 'kim3', '3333', 'hyodong3', 1996, 01, 1, 'kim3@email.com', '3333-3333' ,1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth ) 
    values(hp_Member_hp_Index.nextval, 'kim4', '4444', 'hyodong4', 1996, 01, 1, 'kim4@email.com', '4444-4444', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth ) 
    values(hp_Member_hp_Index.nextval, 'kim5', '5555', 'hyodong5', 1996, 01, 1, 'kim5@email.com', '5555-5555', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim6', '6666', 'hyodong6', 1996, 01, 1, 'kim6@email.com', '6666-6666', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth ) 
    values(hp_Member_hp_Index.nextval, 'kim7', '7777', 'hyodong7', 1996, 01, 1, 'kim7@email.com', '7777-7777', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth ) 
    values(hp_Member_hp_Index.nextval, 'kim8', '8888', 'hyodong8', 1996, 01, 1, 'kim8@email.com', '8888-8888', 1, 1);
insert into hp_Member( hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth )
    values(hp_Member_hp_Index.nextval, 'kim9', '9999', 'hyodong9', 1996, 01, 1, 'kim9@email.com', '9999-9999', 1, 1);
    
select * from hp_Member;

delete from hp_Member;

commit;