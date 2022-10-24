-- https://school.programmers.co.kr/learn/courses/30/lessons/59405
-- 상위 N개 레코드

SELECT name from animal_ins order by datetime limit 1;

-- 가장 먼저 들어온 동물의 이름을 출력하는 쿼리
-- MySql에서는 limit 1을 지정하여 하나를 뽑을 수 있고,
-- MSSQL에서는 top(1) name 을 select 지정하여 뽑을 수 있다.