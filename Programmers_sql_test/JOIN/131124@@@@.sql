-- https://school.programmers.co.kr/learn/courses/30/lessons/131124
-- 그룹별 조건에 맞는 식당 목록 출력하기

-- 다른 답 :
with tmp01 as (
    select
        m.member_id
        , m.member_name
        , count(r.review_id) as review_cnt
    from rest_review as r
    join member_profile as m
        on r.member_id = m.member_id
    group by m.member_id, m.member_name
)
, tmp02 as (
    select
        *
        , max(review_cnt) over() as max_cnt
    from tmp01
)
-- select * from tmp02;
select
    member_name
    , review_text
    , date_format(review_date, '%Y-%m-%d')
from tmp02
join rest_review
    on tmp02.member_id = rest_review.member_id
where review_cnt = max_cnt
order by 3 asc, 2 asc
;


-- 다른 답
select a.member_name, b.review_text, date_format(b.review_date, '%Y-%m-%d') review_date
from member_profile a
left join rest_review b
on a.member_id = b.member_id
where a.member_id = (select member_id from rest_review
                            group by member_id
                            order by count(member_id) desc limit 1)
order by review_date, b.review_text;


-- join 을 이용하는 쿼리
-- left 테이블에 right 테이블을 join 한다는 개념은 어느정도 숙지한 것 같지만
-- on, where 절을 유용하게 사용하지 못함.

-- 또한 문제의 취지는 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 쿼리인데,
-- 가장 많이 작성한 리뷰의 개수 3개를 3명이 가지고 있어서 모두 조회하는 조건을 만들어야 했다만
-- 문제의 정답이 하나의 답도 인정하는 바람에 쿼리의 완성도가 떨어지는 것을 느낌.

