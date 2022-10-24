-- https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 없어진 기록 찾기

-- union , union all 의 차이는
-- 중복없이 합하기 (union)
-- 중복 허용하여 합하기 (union all)


select a.animal_id, name from animal_outs a
where a.animal_id not in (
    select b.animal_id from animal_ins b
)

-- 입양 간 내용엔 있는데, 보호소에 들어온 기록이 없는 것은
-- 입양 간 내용에서 보호소 들어온 기록을 지우거나, 존재하지 않는 (not in) 조건을 세우면
-- 조회가 가능하다.

SELECT OUTS.ANIMALID, OUTS.NAME
FROM ANIMALOUTS AS OUTS
LEFT OUTER JOIN ANIMALINS AS INS            -- left outer join
ON OUTS.ANIMALID = INS.ANIMALID
WHERE INS.ANIMALID IS NULL
ORDER BY OUTS.ANIMAL_ID, OUTS.NAME



SELECT outs.animal_id,outs.name
FROM ANIMAL_OUTS as outs
left join animal_ins AS ins         -- left join을 하면 outs의 datetime은 그대로인데, ins의 datetime이 존재하지 않는 것이 있다.
on outs.animal_id=ins.animal_id
where ins.datetime is null          -- 해당 조건을 찾고, 출력하면 나온다 와...
order by outs.animal_id asc