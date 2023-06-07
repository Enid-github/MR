select * 
from {{ref('genre_Top_200')}}
WHERE Genre = "['pop']"