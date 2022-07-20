use zerobase;	-- zerobase database use
show tables;	-- 전체 테이블 검색 

-- quiz 1
-- 가수가 직업인 연예인의 이름, 직업을 검색하는 쿼리와
-- 1980년대에 태어난 연예인의 이름, 생년월일, 나이를 검색하는 쿼리를
-- UNION 으로 실행해 주세요.

-- 1. 가수가 직업인 연예인의 이름, 직업을 검색하는 쿼리
SELECT NAME, JOB_TITLE FROM CELEB WHERE JOB_TITLE LIKE '%가수%';
-- 2. 1980년대에 태어난 연예인의 이름, 생년월일, 나이를 검색하는 쿼리
SELECT NAME, BIRTHDAY, AGE FROM CELEB WHERE BIRTHDAY BETWEEN '1980-01-01' AND '1989-12-31';
-- 3. UNION 으로 실행해 주세요.		// COLUMN 개수가 맞지 않아 오류가 발생한다. 조치) 2번 쿼리에서 AGE를 제외시켰음.
SELECT NAME, JOB_TITLE FROM CELEB WHERE JOB_TITLE LIKE '%가수%'
UNION
SELECT NAME, BIRTHDAY FROM CELEB WHERE BIRTHDAY BETWEEN '1980-01-01' AND '1989-12-31';

-- quiz 2
-- 1. 직업이 가수인(가수를 포함하는) 데이터를 검색하는 쿼리와
-- 2. 직업이 텔런트인(텔런트를 포함하는) 데이터를 검색하는 쿼리를
-- 3. 중복을 제거하여 합쳐서 실행해주세요.

-- 1.
SELECT * FROM CELEB WHERE JOB_TITLE LIKE '%가수%';

-- 2.
SELECT * FROM CELEB WHERE JOB_TITLE LIKE '%텔런트%';

-- 3.
SELECT * FROM CELEB WHERE JOB_TITLE LIKE '%가수%'
UNION
SELECT * FROM CELEB WHERE JOB_TITLE LIKE '%텔런트%';

-- quiz 3
-- 1. 성이 이씨인 데이터를 검색하는 쿼리와
-- 2. 1970년대생을 검색하는 쿼리를
-- 3. 중복을 포함하여 합쳐서 실행해주세요.

-- 1.
SELECT NAME, BIRTHDAY FROM CELEB WHERE NAME LIKE '이%';

-- 2.
SELECT NAME, BIRTHDAY FROM CELEB WHERE BIRTHDAY BETWEEN '1970-01-01' AND '1979-12-31';

-- 3.
SELECT NAME, BIRTHDAY FROM CELEB WHERE NAME LIKE '이%'
UNION ALL
SELECT NAME, BIRTHDAY FROM CELEB WHERE BIRTHDAY BETWEEN '1970-01-01' AND '1979-12-31';
