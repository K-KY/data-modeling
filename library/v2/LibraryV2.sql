
create table lib_user(
    user_id varchar2(20) primary key,
    user_name varchar(20),
    user_phone number
);
ALTER TABLE lib_user add(lib_id VARCHAR2(20)); -- 테이블 칼럼 추가
ALTER TABLE lib_user ADD CONSTRAINT FOREIGN KEY(lib_id) REFERENCES library(lib_id); -- 테이블 외래키 제약 지정