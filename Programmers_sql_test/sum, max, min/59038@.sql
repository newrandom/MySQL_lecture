-- https://school.programmers.co.kr/learn/courses/30/lessons/59038
-- 최솟값 구하기

select datetime from animal_ins
order by datetime limit 1;

-- datetime의 오름차순으로 첫번째 요소를 뽑는 쿼리
-- 가장 먼저 들어온 동물의 정보를 뽑는 쿼리