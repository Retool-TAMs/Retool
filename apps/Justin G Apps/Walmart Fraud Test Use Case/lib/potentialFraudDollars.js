function calculateSum() {
  return {{ filter.data }}.reduce((sum, entry) => 
    entry.total_price > 100 && entry.transaction_type === 'Return' 
      ? sum + entry.total_price 
      : sum, 0);
}

return Math.floor(calculateSum());

