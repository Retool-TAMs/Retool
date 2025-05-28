const data = {{ filteredData.value }};

const formatToMonth = (date) => {
  return `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}`;
};

const aggregateMonthly = (data) => {
  const counts = data.reduce((acc, curr) => {
    const date = new Date(curr.timestamp);
    const month = formatToMonth(date);
    acc[month] = (acc[month] || 0) + 1;
    return acc;
  }, {});

  return Object.entries(counts).map(([time, count]) => ({ time, count }));
};

const monthlyData = aggregateMonthly(data);

return monthlyData;