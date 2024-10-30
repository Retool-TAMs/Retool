if (dateRange1.value.start === '' && dateRange1.value.end === '') {
  return getTransactions.data
}
let startDate = dateRange1.value.start !== ''? new Date(new Date(dateRange1.value.start).setHours(0,0,0,0)) : new Date(0)
let endDate = dateRange1.value.end !== ''? new Date(new Date(dateRange1.value.end).setHours(23,59,59,999)) : new Date("2200-12-31T23:59:59Z")
console.log("startDate:" + startDate + ", endDate:" + endDate)

const filteredData = getTransactions.data.filter((record) => {
  const transDate = new Date(record.transaction_date)
  return transDate >= startDate && transDate <= endDate
})
return filteredData