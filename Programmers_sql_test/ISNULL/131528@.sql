-- https://school.programmers.co.kr/learn/courses/30/lessons/131528
-- 나이 정보가 없는 회원 수 구하기

select count(*) users from user_info
where age is null;

-- 나이 정보가 없는 회원의 수를 count 하는 쿼리
-- count(*)을 이용하기 보다는 PK를 이용하는 것이 좋은 방법일 수 있다.

select count(user_id) users from user_info
where age is null;