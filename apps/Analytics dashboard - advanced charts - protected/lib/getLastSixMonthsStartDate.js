const today = new Date();
const endDate = new Date(today);
const startDate = new Date(today);
startDate.setDate(today.getDate() - 180);


return startDate;