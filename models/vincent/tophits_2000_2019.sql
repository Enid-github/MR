SELECT 
    *
FROM {{ source("MR", "tophits_2000_2019")}}