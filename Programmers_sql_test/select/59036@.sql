-- https://school.programmers.co.kr/learn/courses/30/lessons/59036
-- 아픈 동물 찾기


SELECT animal_id, name FROM animal_ins
WHERE intake_condition  = 'Sick'
ORDER BY animal_id;

-- 단순 CONDITION 조회 쿼리
-- intake_condition 의 값이 'Sick' 인 값만 찾으면 되는 쿼리문