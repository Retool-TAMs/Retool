const data = {{ filteredData.value }};

const aggregated = data.reduce((acc, curr) => {
  const { user_region, engagement_level } = curr;
  
  if (!acc[user_region]) {
    acc[user_region] = { High: 0, Medium: 0, Low: 0 };
  }
  acc[user_region][engagement_level] += 1;

  return acc;
}, {});

const resultArray = Object.entries(aggregated).flatMap(([region, counts]) => {
  return Object.entries(counts).map(([engagement_rate, count]) => ({
    user_region: region,
    engagement_rate,
    count
  }));
});

return resultArray;