-- https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 중복 제거하기

select count(distinct name) from animal_inS where animal_id <> '';

-- 보호소에 들어온 동물의 이름 중 
-- NULL과 중복되는 이름을 제거한 동물의 숫자를 나타내는 쿼리

-- count는 * 가 아니면 NULL을 세지 않는다고 한다.

-- NULL은 비교연산으로 비교할 수 없다.