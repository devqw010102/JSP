DROP TABLE MEMBER;

CREATE TABLE member(
    id VARCHAR2(20) PRIMARY KEY,
    passwd VARCHAR2(20),
    name VARCHAR2(30)
);

INSERT INTO member VALUES('1', '1234', '홍길순');
INSERT INTO member VALUES('2', '1235', '홍길동');

SELECT * FROM member;