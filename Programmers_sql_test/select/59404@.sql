-- https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- 여러 기준으로 정렬하기

SELECT animal_id, name, datetime from animal_ins
order by name, datetime desc;

-- 조회 순서를 이름 > 날짜의 역순 으로 나타내는 쿼리