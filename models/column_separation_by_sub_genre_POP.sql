SELECT *,
    SPLIT(genre, ',')[SAFE_OFFSET(1)] as sub_genre_2,
    SPLIT(genre, ',')[SAFE_OFFSET(2)] as sub_genre_3,
    SPLIT(genre, ',')[SAFE_OFFSET(3)] as sub_genre_4
FROM (
    SELECT *, 
        CASE
            WHEN REGEXP_CONTAINS(genre, r'hip hop') THEN 'hip hop'
            WHEN REGEXP_CONTAINS(genre, r'pop') THEN 'pop'
            ELSE 'other'
        END as sub_genre_1
    FROM {{ ref("tophits_2000_2019")}}
) as t
WHERE t.sub_genre_1 = 'pop'

