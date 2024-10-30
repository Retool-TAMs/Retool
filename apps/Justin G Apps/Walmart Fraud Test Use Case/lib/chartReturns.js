
function getReturnTransactionsForChart() {
  const filteredData = {{ filter.data }}.filter(entry => 
    entry.total_price > 100 && entry.transaction_type === 'Return'
  );
  
  const chartData = filteredData.map(({ transaction_date, total_price }) => ({
    x: transaction_date,
    y: total_price
  }));
  
  return chartData;
}

return getReturnTransactionsForChart();


