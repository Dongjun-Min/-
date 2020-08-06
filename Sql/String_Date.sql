-- 1. 루시와 엘라 찾기
SELECT animal_id,name,sex_upon_intake
from animal_ins
where name in ('lucy','ella','pickle','rogan','sabrina','mitty')
order by animal_id;

-- 2. 이름에 el이 들어가는 동물 찾기
SELECT animal_id, name
from animal_ins
where name like '%EL%' and animal_type = "dog"
order by name;

-- 3. 중성화 여부 파악하기
select animal_id, name, 
if(sex_upon_intake like "Neutered%" or sex_upon_intake like "Spayed%",'O','X') as 중성화
from animal_ins;

-- 4. 오랜 기간 보호한 동물(2)
SELECT a.animal_id, a.name
from animal_ins a, animal_outs b
where a.animal_id=b.animal_id
order by b.datetime-a.datetime desc
limit 2;

-- 5. DATETIME에서 DATE로 형 변환
SELECT animal_id, name, date_format(datetime,'%Y-%m-%d')
from animal_ins
order by animal_id;