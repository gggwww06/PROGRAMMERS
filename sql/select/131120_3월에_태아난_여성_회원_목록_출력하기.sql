-- Active: 1737259381124@@127.0.0.1@3306
# 3월에 태아난 여성 회원 목록 출력하기
# level 2

-- mysql
SELECT
    MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d')
FROM 
    MEMBER_PROFILE
WHERE
    -- 생일이 3월
    -- mysql에서는 month 함수로 월 추출 가능
    MONTH(DATE_OF_BIRTH) = 3
    -- 여성
    AND GENDER = 'W'
    -- 전화번호가 NULL인 경우는 제외
    AND TLNO IS NOT NULL
ORDER BY
    -- 회원 ID 기준 오름차순 정렬
    MEMBER_ID;


-- sqlite
SELECT
    MEMBER_ID, MEMBER_NAME, GENDER, strftime('%Y-%m-%d', DATE_OF_BIRTH)
FROM 
    MEMBER_PROFILE
WHERE
    -- 생일이 3월
    -- sqlite에는 month 함수가 없으므로 strftime 사용
    strftime('%m', DATE_OF_BIRTH) = '03'
    -- 여성
    AND GENDER = 'W'
    -- 전화번호가 NULL인 경우는 제외
    AND TLNO IS NOT NULL
ORDER BY
    -- 회원 ID 기준 오름차순 정렬
    MEMBER_ID;




-- 테이블 생성
CREATE TABLE MEMBER_PROFILE (
    MEMBER_ID TEXT PRIMARY KEY,
    MEMBER_NAME TEXT NOT NULL,
    TLNO TEXT,
    GENDER TEXT NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL
);

-- 데이터 삽입
INSERT INTO MEMBER_PROFILE (MEMBER_ID, MEMBER_NAME, TLNO, GENDER, DATE_OF_BIRTH) VALUES
('jiho92@naver.com', '이지호', '01076432111', 'W', '1992-02-12'),
('jiyoon22@hotmail.com', '김지윤', '01032324117', 'W', '1992-02-22'),
('jihoon93@hanmail.net', '김지훈', '01023258688', 'M', '1993-02-23'),
('seoyeons@naver.com', '박서연', '01076482209', 'W', '1993-03-16'),
('yoonsy94@gmail.com', '윤서연', NULL, 'W', '1994-03-19');