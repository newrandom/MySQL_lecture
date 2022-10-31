-- https://www.hackerrank.com/challenges/more-than-75-marks/problem?h_r=next-challenge&h_v=zen&isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select name from students where marks > 75 order by right(name, 3), id;

-- right(field, number) 를 활용하여 스트링타입 자르기
-- 해당 필드의 오른쪽에서 number 까지의 글자를 표현(?)
-- ex) right(name, 3) >> newrandom ==> dom