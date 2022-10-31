-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

select concat(name,'(', left(occupation, 1),')') from occupations order by name;
select concat('There are a total of ', count(occupation),' ', lower(occupation),'s.') from occupations group by occupation order by count(occupation), occupation;

-- concat 함수를 이용한 쿼리
-- left() 함수를 이용하여 직업의 첫 글자를 따오고, 이를 name 필드와 붙임
-- 결과를 나타낼 때, 문장과 count 필드, lower 필드를 합하여 결과를 출력하는 쿼리를 진행하였음.