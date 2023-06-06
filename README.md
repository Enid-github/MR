# MR
pour select une source
SELECT 
    *
FROM {{ source("MR", "top_chart_200")}}

pour select une ref 

SELECT 
    *
FROM {{ ref("nom de la ref")}}
