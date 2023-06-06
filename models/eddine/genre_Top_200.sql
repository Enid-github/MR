SELECT 
    Song_Name,
    Genre
FROM {{ source("MR", "top_chart_200")}}