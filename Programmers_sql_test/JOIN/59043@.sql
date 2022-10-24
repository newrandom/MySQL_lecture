-- https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 있었는데요 없었습니다.


select a.animal_id, a.name from animal_ins a
left join animal_outs b
on a.animal_id = b.animal_id        -- 우선 두 테이블을 조인하고,
where a.datetime > b.datetime       -- 조건을 비교한다.
order by a.datetime;

-- 보호 시작일 보다 입양일이 더 빠른 동물(a.datetime > b.datetime)
-- 보호 시작일이 더 빠른 순으로 출력 (order by a.datetime)