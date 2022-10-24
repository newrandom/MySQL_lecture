-- https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 조건에 맞는 회원 수 구하기


select count(user_id) from user_info 
where joined between '2021-01-01' and '2021-12-31'
    and age between 20 and 29;

-- 조건 확인에 두가지 조건을 이용함
-- joined 의 값이 '2021년'으로 한정되고, age의 값이 '20이상 29 이하'의 값으로 한정되는 조건을 만드는 쿼리
