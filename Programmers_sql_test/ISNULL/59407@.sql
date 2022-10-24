-- https://school.programmers.co.kr/learn/courses/30/lessons/59407
-- 이름이 있는 동물의 아이디

select animal_id from animal_ins
where name is not null
order by animal_id;

-- 필드 is null , 필드 is not null 조건 확인