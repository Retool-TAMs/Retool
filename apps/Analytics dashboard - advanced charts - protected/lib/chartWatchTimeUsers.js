const data = {{ filteredData.value }};

const ageGroups = [
  { label: '18-24', min: 18, max: 24 },
  { label: '25-34', min: 25, max: 34 },
  { label: '35-44', min: 35, max: 44 },
  { label: '45-59', min: 45, max: 59 },
  { label: '60-80', min: 60, max: 80 },
];


const aggregated = data.reduce((acc, curr) => {
  const { user_age, watch_time } = curr;
  
  const ageGroup = ageGroups.find(group => user_age >= group.min && user_age <= group.max);
  if (!ageGroup) return acc;

  if (!acc[ageGroup.label]) {
    acc[ageGroup.label] = { totalWatchTime: 0, count: 0 };
  }
  
  acc[ageGroup.label].totalWatchTime += watch_time;
  acc[ageGroup.label].count += 1;

  return acc;
}, {});

const averagesArray = Object.keys(aggregated).map(ageGroup => {
  const { totalWatchTime, count } = aggregated[ageGroup];
  return { age_group: ageGroup, average_watch_time: (totalWatchTime / count).toFixed(2) };
});

return averagesArray;