const data = {{ filteredData.value }};

const total_watch_time = data.reduce((sum, item) => sum + item.watch_time, 0);
return (total_watch_time / data.length).toFixed(0);
