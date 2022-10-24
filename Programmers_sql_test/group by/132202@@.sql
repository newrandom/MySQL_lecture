-- https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 진료과별 총 예약 횟수 출력하기

select mcdp_cd '진료과코드', count(pt_no) '5월예약건수' from appointment
where apnt_ymd like '2022-05%'
group by mcdp_cd
order by '5월예약건수', '진료과코드';       -- 잘못된 쿼리

select mcdp_cd '진료과코드', count(pt_no) '5월예약건수' from appointment
where apnt_ymd like '2022-05%'
group by mcdp_cd
order by count(pt_no), mcdp_cd;           -- 옳은 쿼리



-- 논리 식은 맞는 듯하다만
-- order by 에서 출력 필드명을 쓴게 잘못인 듯 하다.

-- order by 에는 Alias 명을 쓰는게 아니라 해당 필드 식을 써야하는 듯 하다.