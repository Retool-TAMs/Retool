let data = {{ formatDataAsArray(rawData.data) }};

const start_date = {{ Date.parse(String(dateRange1.value.start)) }};
const end_date = {{ Date.parse(String(dateRange1.value.end)) }};


const min_user_age = {{ userAgeSlider.value.start }};
const max_user_age = {{ userAgeSlider.value.end }};

const region_select = {{ regionSelect.value }};
const content_select = Object.values({{ contentSelect.value }});
const device_select = Object.values({{ deviceSelect.value }});

const filtered = data.filter(row => { 
  const date_filter = (Date.parse(row.timestamp) >= start_date && Date.parse(row.timestamp) <= end_date);
  
  const age_filter = (min_user_age === null || max_user_age === null) || 
    (row.user_age >= min_user_age && row.user_age <= max_user_age);
  
  const region_filter = !region_select || region_select.length === 0 || region_select.includes(row.user_region);

  const content_filter = !content_select || content_select.length === 0 || content_select.includes(row.content_type);

  const device_filter = !device_select || device_select.length === 0 || device_select.includes(row.device_type);

  
  return age_filter && region_filter && content_filter && device_filter && date_filter;
});

return filtered;