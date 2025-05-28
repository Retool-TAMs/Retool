const data = {{ filteredData.value }};

const distrubtion = data.reduce((acc, item) => {
  acc[item.engagement_level] = (acc[item.engagement_level] || 0) + 1;
  return acc;
}, {});

return distrubtion;