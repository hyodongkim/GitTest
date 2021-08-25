Create table hp_Member(
hp_Index            number(6) primary key,
hp_ID               varchar2(20) not null,
hp_Password         varchar2(30) not null,
hp_Name             varchar2(20) not null,
hp_Birthday_Year    number(10) not null,
hp_Birthday_Month   number(5) not null,
hp_Sex              number(3) not null,
hp_Email            varchar2(40) not null,
hp_Phone            varchar2(20) not null,
hp_Ticket           number(6) not null,
hp_Auth             number(6) not null
);

create sequence hp_Member_hp_Index increment by 1 start with 1 minvalue 1 maxvalue 1000 nocycle nocache;

insert into hp_Member(hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth) 
  values(hp_Member_hp_Index.nextval, 'hyo', '1234', 'hd', 1996, 01, 1, '@@', '010-777', 3, 5);
insert into hp_Member(hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth) 
  values(hp_Member_hp_Index.nextval, 'hyo-D', '1234', 'hd', 1996, 01, 1, '@@', '010-777', 3, 5);
insert into hp_Member(hp_Index, hp_ID, hp_Password, hp_Name, hp_Birthday_Year, hp_Birthday_Month, hp_Sex, hp_Email, hp_Phone, hp_Ticket, hp_Auth) 
  values(hp_Member_hp_Index.nextval, 'hyo-Ddd', '12345', 'hd', 1996, 01, 1, '@@@', '010-666', 3, 5);

select * from hp_Member;