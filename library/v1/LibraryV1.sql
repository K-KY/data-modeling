
--library 테이블 생성
create table library(
    lib_id varchar2(20)
);

alter table library add primary key (lib_id);
insert into library values('LI00001');
select * from library;

--book 테이블 생성
create table book(
    book_id VARCHAR2(20) not null primary key,
    book_name VARCHAR2(100) not null,
    book_published DATE not null,
    book_writer VARCHAR2(30) not null,
    book_publisher VARCHAR(30) not null,
    lib_id VARCHAR2(20) not null, /*외래키 지정*/
    CONSTRAINT fk_lib_id foreign key(lib_id) references library(lib_id)
);

