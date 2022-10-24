-- https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 동명 동물 수 찾기

select name, count(name) from animal_ins
group by name
having count(name) >= 2 and name <> ''
order by name;

-- 두번 이상 쓰인 이름
-- 해당 이름이 쓰인 횟수
-- 이름이 없는 동물은 집계에서 제외
-- 결과는 이름 순으로 조회