-- 코드를 입력하세요
SELECT COUNT(*)
FROM USER_INFO
WHERE 
AGE > 19 
AND 
AGE < 30
AND 
JOINED BETWEEN '2021-01-01' AND '2021-12-31'