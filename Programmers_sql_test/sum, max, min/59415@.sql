-- https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- 최댓값 구하기

select datetime from animal_ins
order by datetime desc limit 1;

-- 가장 최근에 들어온 동물 조회하는 쿼리
-- datetime 필드를 desc 하고 limit 1 하여 하나만 출력