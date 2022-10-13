-- 강원도에 위치한 생산공장 목록 출력하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131112


-- 강원도에 위치한 
-- 식품공장의 공장ID, 공장이름, 주소를 조회
-- 결과는 공장ID를 기준으로 오름차순 정렬


-- LIKE 문을 사용하는 방법

-- 정답 1 
select factory_id, factory_name, address from food_factory where address like '강원도%';

-- 정답 2
select factory_id, factory_name, address from food_factory where address like '%강원도%';
