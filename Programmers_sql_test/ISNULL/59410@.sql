-- https://school.programmers.co.kr/learn/courses/30/lessons/59410
-- NULL 처리하기

select animal_type, ifnull(name,'No name'), sex_upon_intake from animal_ins
order by animal_id;

-- NULL이라는 기호를 No name 으로 표현하는 쿼리