-- https://school.programmers.co.kr/learn/courses/30/lessons/131532
-- 년, 월, 성별 별 상품 구매 회원 수 구하기

select date_format(b.sales_date, '%Y') YEAR,
        date_format(b.sales_date, '%m') MONTH,
        a.gender,
        count(distinct a.user_id)
from user_info a, online_sale b
where a.user_id = b.user_id
        and a.gender in (0,1)
group by a.gender, MONTH
order by YEAR, MONTH, GENDER


-- 두 테이블을 조인하여 
-- 년, 월, 성별 별로 상품을 구매한 회원 수를 조회하는 쿼리
-- 결과는 년, 월, 성별 기준으로 오름차순 정렬,
-- 성별이 없는 경우는 결과에서 제외하기

-- count(*)을 사용하면 NULL 값도 카운트 되기 때문에 몇가지 조건을 세워야 한다.

-- 처음에는 count(a.user_id)를 가지고 조회하였지만 정답이 아니었다.
-- 이유를 찾기 위해 분할하여 조회하다보니 
-- user_id 가 둘 이상 뜨는 것도 count 를 먹이는 것이었다.

-- 이에 user_id를 distinct 처리하고 count를 진행하면 되는지 살펴보니 적용이 된다.

-- 그래서 count(distinct a.user_id)를 적용하니 성공!