-- 코드를 입력하세요
SELECT A.AUTHOR_ID, B.AUTHOR_NAME,A.CATEGORY, SUM(A.PRICE*C.SALES) AS TOTAL_SALES
FROM BOOK A
JOIN AUTHOR B ON A.AUTHOR_ID = B.AUTHOR_ID
JOIN BOOK_SALES C ON A.BOOK_ID = C.BOOK_ID
WHERE YEAR(C.SALES_DATE) = 2022 AND MONTH(C.SALES_DATE) =1
GROUP BY AUTHOR_ID, CATEGORY 
ORDER BY A.AUTHOR_ID, A.CATEGORY DESC