-- 1. 최댓값 구하기
SELECT datetime from animal_ins order by datetime desc limit 1;

-- 2. 최솟값 구하기
SELECT datetime from animal_ins order by datetime limit 1;

-- 3. 동물 수 구하기
SELECT count(*) as count from animal_ins;

-- 4. 중복 제거하기
SELECT count(distinct NAME) from animal_ins;
