select distinct(content_type)from {{ formatDataAsArray(rawData.data) }}
