select max(user_age) as max from {{ formatDataAsArray(rawData.data) }} 
