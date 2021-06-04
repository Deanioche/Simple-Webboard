-- mysql에서는 DB사용을 위해 db를 생성 & 지정해주어야 한다.
CREATE DATABASE webboard_db;
use webboard_db;

CREATE TABLE IF NOT EXISTS `test_db`.`배우` (
                                              `배우번호` INT NOT NULL,
                                              `생년월일` date NULL,
                                              `이름` VARCHAR(45) NULL,
                                              `성별` VARCHAR(10) Check(`성별` in('남', '여')) NULL,
                                              `출생지` VARCHAR(45) NULL,
                                              `키` Double NULL,
                                              `몸무게` Double NULL,
                                              `혈액형` VARCHAR(45) Check(`혈액형` in('A', 'B', 'AB', 'O')) NULL,
                                              PRIMARY KEY (`배우번호`))
    ENGINE = InnoDB;


-- 시퀀스를 사용할 테이블 생성
CREATE TABLE SEQUENCES
(
    NAME VARCHAR(32)
    , CURRVAL BIGINT UNSIGNED
)
    ENGINE = InnoDB;

-- 시퀀스를 생성 할 프로시저 생성

DELIMITER $$
CREATE PROCEDURE `create_sequence` (IN the_name text)
    MODIFIES SQL DATA
    DETERMINISTIC
BEGIN
    DELETE FROM sequences WHERE name = the_name;
    INSERT INTO sequences VALUES(the_name, 0);
END;

-- 생성 한 시퀀스의 다음 값을 가져오는 함수 생성
DELIMITER $$
CREATE FUNCTION `nextval` (the_name VARCHAR(32))
    RETURNS BIGINT
        UNSIGNED
    MODIFIES SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE ret BIGINT UNSIGNED;
    UPDATE sequences SET currval = currval +1 WHERE name = the_name;
    SELECT currval INTO ret FROM sequences WHERE name = the_name LIMIT 1;
    RETURN ret;
END;

-- 시퀀스를 생성 할 프로시저 실행
DELETE FROM sequences WHERE name = 'sql';
CALL create_sequence('seq');
/*프로시저를 호출해서 Test 라는 이름의 시퀀스를 생성합니다.

Test라는 시퀀스에 0 값이 할당됩니다.*/

SELECT nextval('seq') FROM DUAL;




/* ===========================
    create table
==============================*/
drop table server;

create table server (
                        server_name varchar(40) primary key ,
                        start_count int
);



create table SIMPLE_USER (
                             id int primary key,
                             email varchar(200) UNIQUE ,
                             nickname varchar(100) UNIQUE ,
                             password varchar(100) NOT NULL ,
                             registration_date datetime DEFAULT now(),
                             last_login datetime DEFAULT now()
);

commit;

/* ===========================
        server
==============================*/
select * from server;

insert into server values('simple', '0');

update webboard_db.server set start_count = start_count + 1 where SERVER_NAME = 'simple';

-- SQLINES LICENSE FOR EVALUATION USE ONLY
select start_count from server where SERVER_NAME = 'simple';

-- SQLINES LICENSE FOR EVALUATION USE ONLY
select * from server;
commit;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
-- select ifnull(count(*), 0) from member where email like '%gmail%';


/* ===========================
        SIMPLE_USER
==============================*/

-- 멤버 조회
select * from SIMPLE_USER;
-- 회원가입시
insert into webboard_db.SIMPLE_USER values((SELECT nextval('seq') FROM DUAL), 'simple4@ruu.kr', 'simple4', '123', default, default);

-- 멤버 제거
delete from SIMPLE_USER where EMAIL = 'simple@ruu.kr';

-- 로그인시
update SIMPLE_USER set last_login = now() where EMAIL like '%simple%';

-- 멤버 조회
select * from SIMPLE_USER;
commit;
