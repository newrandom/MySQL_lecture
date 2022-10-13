-- 서울에 위치한 식당 목록 출력하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131118#

-- INNER JOIN ~ ON 을 사용하는 방법

-- 답 1.
select i.rest_id, i.rest_name, i.food_type, i.favorites, i.address, round(avg(r.review_score),2) score
from rest_info i, rest_review r
where i.rest_id = r.rest_id and i.address like '서울%'
group by i.rest_id
order by score desc, i.favorites desc;

-- 답 2
select i.rest_id, i.rest_name, i.food_type, i.favorites, i.address, round(avg(r.review_score),2) score
from rest_info i inner JOIN
    rest_review r on i.rest_id = r.rest_id
where i.address like '서울%'
group by i.rest_id
order by score desc, i.favorites desc;

-- inner join 을 사용하지 않고, where 절에서 각 PK 키를 비교하여 진행해도 똑같은 결과를 나타내는듯 하다
-- 하지만 inner join 같은 구절을 사용하는게 더 탁월해 보이기도 한다.