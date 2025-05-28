select min(user_age) as min from {{ formatDataAsArray(rawData.data) }} 
