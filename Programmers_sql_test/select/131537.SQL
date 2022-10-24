-- 오프라인/온라인 판매 데이터 통합하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131537

-- ONLINE_SALE 테이블과 OFFLINE_SALE 테이블에서 2022년 3월의 오프라인/온라인 상품 판매 데이터의 판매 날짜, 상품ID, 유저ID, 판매량을 출력하는 SQL문을 작성해주세요. 
-- OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL 로 표시해주세요.
-- 결과는 판매일을 기준으로 오름차순 정렬해주시고 판매일이 같다면 상품 ID를 기준으로 오름차순, 상품ID까지 같다면 유저 ID를 기준으로 오름차순 정렬해주세요.

select date_format(sales_date,'%Y-%m-%d') sales_date, product_id, user_id, sales_amount 
from online_sale a
where sales_date like '2022-03-%'

union

select date_format(sales_date, '%Y-%m-%d'), product_id, NULL as user_id, sales_amount 
from offline_sale b
where sales_date like '2022-03-%'
order by sales_date, product_id, user_id

-- 원래 데이터의 sales_date의 값이 datetime 으로 잡혀있어서 0000-00-00 00:00:00.0000 식으로 저장되어있다.
-- 따라서 date_format()을 이용하여 데이터를 변환할 필요가 있음. >> date_format(date, '%Y-%m-%d')

-- product_id 별로 묶은 후 count 를 하는 것인줄 알았는데, 그게 아니라 UNION을 이용하여 나타내는 것.
-- NULL을 나타내기 위해 NULL as user_id 를 이용하였다. (offline_sales 테이블에는 user_id가 존재하지 않기 때문에)

-- 해당 문제는 아직 이해가 되지 않음... JOIN이 아니라 UNION을 이용할 수 밖에 없는 이유를 알아야 할 듯...?!