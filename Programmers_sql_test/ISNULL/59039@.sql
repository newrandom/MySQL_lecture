-- https://school.programmers.co.kr/learn/courses/30/lessons/59039
-- 이름이 없는 동물의 아이디

-- select ifnull(name, animal_id) from animal_ins
-- order by animal_id;

-- select * from animal_ins
-- where name is null;

select animal_id from animal_ins
where name is null
order by animal_id;

-- 간단한 조건 : where name is null
