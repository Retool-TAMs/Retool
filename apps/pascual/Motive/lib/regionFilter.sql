select distinct user_region from {{ formatDataAsArray(rawData.data) }}