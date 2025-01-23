
function calculateWatchTimePercentage() {
  const data = {{ filter.data }};
  const totalWatchTime = _.sumBy(data, 'total_watch_time');
  const totalWatch = _.sumBy(data, 'watch_time');
  return (totalWatchTime ? (totalWatch / totalWatchTime) : 0)
}

return calculateWatchTimePercentage();

















