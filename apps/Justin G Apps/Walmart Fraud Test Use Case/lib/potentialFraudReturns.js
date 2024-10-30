
function countReturnTransactions() {
  const returnCount = {{ filter.data }}.filter(transaction => transaction.transaction_type === 'Return' && transaction.total_price > 100).length;
  return returnCount;
}

return countReturnTransactions();

