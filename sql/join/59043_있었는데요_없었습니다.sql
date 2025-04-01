# 있었는데요 없었습니다
# level 3

SELECT ai.ANIMAL_ID, ai.NAME
FROM ANIMAL_INS AS ai
JOIN ANIMAL_OUTS AS ao
    ON ai.ANIMAL_ID = ao.ANIMAL_ID
WHERE ai.DATETIME > ao.DATETIME
ORDER BY ai.DATETIME