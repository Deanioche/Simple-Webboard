/*=============================================
    memo
=============================================*/
/*시퀀스의 현재 값 확인*/
SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'SIMPLE_SEQ';

/*시퀀스의 증가 값 설정*/
ALTER SEQUENCE SIMPLE_SEQ INCREMENT BY 1;


commit;

/*=============================================
    reset
=============================================*/

drop table server;
drop sequence SIMPLE_SEQ;
drop table SIMPLE_USER;


drop sequence SIMPLE_SEQ;

commit;

/*=============================================
    create sequence
=============================================*/

create sequence SIMPLE_SEQ increment by 1 minvalue 0 start with 0 nocache;


commit;

/*=============================================
    create table
=============================================*/

create table server (
                        server_name varchar2(40),
                        start_count number
);

create table SIMPLE_USER (
         id number default SIMPLE_SEQ.NEXTVAL primary key,
         email varchar2(200) UNIQUE ,
         nickname varchar2(100) UNIQUE ,
         password varchar2(100) NOT NULL ,
         registration_date date DEFAULT sysdate,
         last_login date DEFAULT sysdate
);



commit;

/*=============================================
    QUERIES
=============================================*/

/***  server ***/

insert into server values('simple', '0');

update server set start_count = start_count + 1 where SERVER_NAME = 'simple';

select * from server;
commit;


/***  SIMPLE_USER ***/

select * from SIMPLE_USER;

delete SIMPLE_USER where EMAIL <> 'simple@ruu.kr';

/*회원가입시*/
insert into SIMPLE_USER values(default, 'simple@ruu.kr', 'simple', '123', default, default);

/*로그인시*/
update SIMPLE_USER set last_login = sysdate where EMAIL like '%simple@ruu.kr%';

select * from SIMPLE_USER;
commit;


