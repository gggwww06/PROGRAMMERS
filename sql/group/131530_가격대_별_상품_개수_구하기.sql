# 가격대 별 상품 개수 구하기
# level 2

SELECT PRICE DIV 10000 * 10000 AS PRICE_GROUP, COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE DIV 10000
ORDER BY PRICE_GROUP


# TRUNCATE(PRICE, -4)도 사용 가능
# TRUNCATE(number, decimals)
# decimals > 0 : decimals 이후 소수점 자릿수 버림 (decimals + 1 까지 버림)
# decimals < 0 : decimals 자릿수 정수 버림
# TRUNCATE(123.4567, 2) : 123.45
# TRUNCATE(123.4567, -2) : 100

# ROUND(number, decimals) : 반올림해서 decimals 까지 남김 (decimals + 1 자릿수에서 반올림)
# ROUND(123.45678) : 123
# ROUND(123.45, 2) : 123.46
SELECT TRUNCATE(PRICE, -4) AS PRICE_GROUP, COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP