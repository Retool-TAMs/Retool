select distinct(device_type)from {{ formatDataAsArray(rawData.data) }}
