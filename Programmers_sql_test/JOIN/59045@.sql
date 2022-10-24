-- https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 보호소에서 중성화한 동물

select a.animal_id, a.animal_type, a.name from animal_ins a
left join animal_outs b
on a.animal_id = b.animal_id
where a.sex_upon_intake <> b.sex_upon_outcome
order by a.animal_id;

-- 간단히 들어올때와 나갈때의 중성화 여부를 확인하는 것이기에,
-- 변경 사항이 있으면 나올 것이라 생각하여
-- where a.sex_upon_intake <> b.sex_upon_outcome 을 필터 조건으로 넣었다.