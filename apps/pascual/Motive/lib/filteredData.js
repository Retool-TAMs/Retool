let data = {{ formatDataAsArray(rawData.data) }};

const region_select = {{ regionSelect.value }};

const filtered = data.filter(row => { 
  const region_filter = region_select.length === 0 || region_select.includes(row.user_region);
  return region_filter;
});

return filtered;