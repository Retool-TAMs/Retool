
function calculateAverageWatchTime() {
  const totalWatchTime = {{ filter.data }}.reduce((sum, entry) => sum + entry.watch_time, 0);
  const averageWatchTime = totalWatchTime / {{ filter.data }}.length || 0;
  return averageWatchTime;
}

return Math.floor(calculateAverageWatchTime());

