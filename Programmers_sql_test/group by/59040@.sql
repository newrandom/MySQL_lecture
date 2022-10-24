-- https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 고양이와 개는 몇 마리 있을까?

select animal_type, count(*) from animal_ins 
group by animal_type
order by animal_type

-- 동물 보호소에 들어온 동물 중 고양이와 개가 각각 몇마리인지 조회하는 쿼리

-- 고양이를 개보다 먼저 조회 (order by animal_type)


-- animal_type 을 group by 로 묶어서 출력하였다.