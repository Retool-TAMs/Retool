const data = {{ filteredData.value }};

const formatToQuarter = (date) => {
  const quarter = Math.floor((date.getMonth() + 3) / 3);
  return `${date.getFullYear()}-Q${quarter}`; 
};

const aggregateQuarterly = (data) => {
  const counts = data.reduce((acc, curr) => {
    const date = new Date(curr.timestamp);
    const quarter = formatToQuarter(date);
    acc[quarter] = (acc[quarter] || 0) + 1;
    return acc;
  }, {});

  return Object.entries(counts).map(([time, count]) => ({ time, count }));
};

const quarterlyData = aggregateQuarterly(data);

return quarterlyData;