-- https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 어린 동물 찾기

select animal_id, name from animal_ins
where intake_condition <> 'Aged';
-- where intake_condition != 'Aged';

-- 59036 번 문제와 동일한 간단한 condition 조회 문제
-- intake_condition의 값이 Aged 가 아닌 것들만 나타내면 되는 문제이다.