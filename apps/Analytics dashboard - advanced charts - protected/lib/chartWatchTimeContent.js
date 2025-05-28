const data = {{ filteredData.value }};

const aggregated = data.reduce((acc, curr) => {
  const { content_type, watch_time } = curr;

  if (!acc[content_type]) {
    acc[content_type] = { totalWatchTime: 0, count: 0 };
  }

  acc[content_type].totalWatchTime += watch_time;
  acc[content_type].count += 1;
  
  return acc;
}, {});

const averagesArray = Object.keys(aggregated).map(content_type => {
  const { totalWatchTime, count } = aggregated[content_type];
  return { content_type, average_watch_time: (totalWatchTime / count).toFixed(2) };
});

return averagesArray;