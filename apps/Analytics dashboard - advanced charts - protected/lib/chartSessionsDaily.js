const data = {{ filteredData.value }};

const formatToDay = (date) => {
  return `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}-${String(date.getDate()).padStart(2, '0')}`;
};

const aggregateDaily = (data) => {
  const counts = data.reduce((acc, curr) => {
    const date = new Date(curr.timestamp);
    const day = formatToDay(date);
    acc[day] = (acc[day] || 0) + 1;
    return acc;
  }, {});

  return Object.entries(counts).map(([time, count]) => ({ time, count }));
};

const dailyData = aggregateDaily(data);

return dailyData;