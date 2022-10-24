-- https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 오랜 기간 보호한 동물(1)

select a.name, a.datetime from animal_ins a
left join animal_outs b
on a.animal_id = b.animal_id
where b.datetime is null
order by a.datetime
limit 3;

-- animal_id를 기준으로 left join을 진행하고, 
-- b.datetime이 빈값인 것을 조회 (입양이 되지 않은 동물들을 조회)
-- limit 3 로 상단 3마리를 출력함.