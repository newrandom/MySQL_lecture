use zerobase;
show tables;

# CONCAT 구문
SELECT CONCAT('concat', ' ', 'test');

SELECT CONCAT('이름:', name) FROM celeb;

# =====================# 

# ALIAS 구문
-- COLUMN에 사용 : SELECT COLUMN AS ALIAS FROM TABLENAME;
-- TABLE에 사용 : SELECT * FROM TABLENAME AS ALIAS;

-- name을 이름으로 별칭하여 만들어 검색
SELECT NAME AS '이름' FROM CELEB;

-- name은 이름으로, agency는 소속사로 별칭을 만들어 검색
SELECT NAME AS '이름', agency AS '소속사' FROM CELEB;

-- name과 job_title을 합쳐서 profile이라는 별칭을 만들어 검색 
SELECT CONCAT(name, ' : ', job_title) AS PROFILE FROM CELEB;
SELECT CONCAT(name, ' : ', job_title) AS 프로필 FROM celeb;		-- ' ' 에 넣지 않아도 적용 된다.
SELECT CONCAT(name, ' : ', job_title) AS '프로필' FROM celeb;

-- snl_show에 출연한 celeb을 기준으로 두 테이블을 조인하여, 
-- celeb 테이블은 c, snl_show 테이블은 s 라는 별칭을 만들어
-- 출연한 시즌과 에피소드, 이름, 직업을 검색

SELECT s.season, s.episode, c.name, c.job_title
FROM celeb AS c, snl_show AS s
WHERE c.name = s.host;

-- snl_show에 출연한 celeb을 기준으로 두 테이블을 조인하여,
-- 각 데이터의 별칭을 사용하여 검색
-- 시즌, 에피소드, 방송일을 합쳐서 '방송정보'
-- 이름, 직업을 합쳐서 '출연자정보'

SELECT CONCAT(S.SEASON,' - ', S.EPISODE,' (',S.BROADCAST_DATE,')') AS '방송정보', CONCAT(C.NAME,'(', C.JOB_TITLE,')') AS '출연자정보'
FROM CELEB AS C, SNL_SHOW AS S
WHERE C.NAME = S.HOST;

-- AS는 생략도 가능하다.
SELECT CONCAT(S.SEASON,' - ', S.EPISODE,' (',S.BROADCAST_DATE,')') '방송정보', CONCAT(C.NAME,'(', C.JOB_TITLE,')') '출연자정보'
FROM CELEB C, SNL_SHOW S
WHERE C.NAME = S.HOST;

# Quiz 1
-- 이름이 3글자인 연예인 정보를 다음과 같이 출력하세요
SELECT CONCAT('이름 : ' , name, ', ', '소속사 : ', agency) AS '연예인 정보'
FROM CELEB
WHERE NAME LIKE ('___');		-- 이름이 3글자 // 그냥 '___' 을 써도 된다.

# Quiz 2
-- 1. 앞 글자가 2글자이고, '엔터테이먼트'로 끝나는 소속사 연예인 중
-- 2. SNL 에 출연한 연예인의 신상정보(나이, 성별)와 출연정보(시즌-에피소드, 방송날짜), 소속사 정보를 
-- 3. 방송날짜 최신순으로 정렬하여 다음과 같이 검색하세요.

SELECT C.AGENCY AS '소속사 정보', CONCAT('나이 :',C.AGE,'(',C.SEX,')') AS '신상정보', CONCAT(S.SEASON,'-',S.EPISODE,', ', '방송날짜 :',S.BROADCAST_DATE) AS '출연정보'	-- 2
FROM CELEB C, SNL_SHOW AS S
WHERE C.AGENCY LIKE ('__엔터테이먼트')		-- 1
AND C.NAME = S.HOST		-- 2
ORDER BY S.BROADCAST_DATE DESC;		-- 3

# ================= # 
# DISTINCT : 검색한 결과의 중복 제거

-- 연예인 소속사 종류를 검색 (중복포함)
SELECT AGENCY FROM CELEB;

-- 연예인 소속사 종류를 검색 (중복제거)
SELECT DISTINCT AGENCY FROM CELEB;

-- 가수 중에서 성별과 직업별 종류를 검색 (중복포함)
SELECT SEX, JOB_TITLE FROM CELEB
WHERE JOB_TITLE LIKE '%가수%';

-- 가수 중에서 성별과 직업별 종류를 검색 (중복제거)
SELECT DISTINCT SEX, JOB_TITLE FROM CELEB
WHERE JOB_TITLE LIKE '%가수%';

# Quiz 1
-- CELEB 테이블에서 성별과 소속사별 종류를 검색하여
-- 성별, 소속사 순으로 정렬하세요
SELECT DISTINCT NAME, SEX, AGENCY
FROM CELEB
ORDER BY NAME, AGENCY;

# =================== #
# LIMIT : 검색결과를 정렬된 순으로 주어진 숫자만큼만 조회

-- celeb 데이터 3개만 가져오기
SELECT * FROM CELEB LIMIT 3;

-- 나이가 가장 적은 연예인 4명을 검색
SELECT * 
FROM CELEB
ORDER BY AGE ASC
LIMIT 4;

# Quiz 1
-- 1. CELEB 테이블에서 남자 연예인 중
-- 2. 나이가 가장 많은 2명을 조회하세요.

SELECT * 
FROM CELEB
WHERE SEX = 'M'		-- 1.
ORDER BY AGE DESC	-- 2.
LIMIT 2;			-- 2.

# Quiz 2
-- 1. SNL에 출연한 연예인의 정보를
-- 2. 나이가 많은 순으로
-- 3. 2개만 검색하여 다음과 같이 출력하세요.

SELECT CONCAT('SNL 시즌 ', S.SEASON, ' 에피소드 ', S.EPISODE, ' 호스트 ', S.HOST) AS 'SNL 방송정보', C.AGE
FROM CELEB C, SNL_SHOW AS S
WHERE C.NAME = S.HOST
ORDER BY C.AGE DESC
LIMIT 2;