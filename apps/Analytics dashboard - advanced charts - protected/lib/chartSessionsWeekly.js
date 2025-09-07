const data = {{ filteredData.value }};

const formatToWeek = (date) => {
  const startDate = new Date(date.getFullYear(), 0, 1);
  const weekNumber = Math.ceil(((date - startDate) / 86400000 + 1) / 7);
  return `${date.getFullYear()}-W${String(weekNumber).padStart(2, '0')}`;
};

const aggregateWeekly = (data) => {
  const counts = data.reduce((acc, curr) => {
    const date = new Date(curr.timestamp);
    const week = formatToWeek(date);
    acc[week] = (acc[week] || 0) + 1;
    return acc;
  }, {});

  return Object.entries(counts).map(([time, count]) => ({ time, count }));
};

const weeklyData = aggregateWeekly(data);

return weeklyData;