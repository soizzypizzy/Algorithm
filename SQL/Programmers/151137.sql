-- Programmers 151137 : GROUP BY, SELECT 조건문
SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE REGEXP_LIKE(OPTIONS, '통풍시트|열선시트|가죽시트')
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC


SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%'
    OR OPTIONS LIKE '%열선시트%'
    OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC


SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE INSTR(OPTIONS, '통풍시트') > 0
    OR INSTR(OPTIONS, '열선시트') > 0
    OR INSTR(OPTIONS, '가죽시트') > 0
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC
