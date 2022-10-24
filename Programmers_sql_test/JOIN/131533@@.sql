-- https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 상품 별 오프라인 매출 구하기

select a.product_code, sum(a.price * b.sales_amount) sales from product a
left join offline_sale b
on a.product_id = b.product_id
group by a.product_code
order by sales desc, a.product_code;

-- sum() 함수를 이용하였기 때문에 group by 를 이용해야 한다.
-- left join 을 이용하여 왼쪽 테이블에 조인하고 
-- a.product_id = b.product_id 를 비교한 결과를 만든다.