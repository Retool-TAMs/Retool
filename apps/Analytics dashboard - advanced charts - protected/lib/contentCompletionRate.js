function generateMetric() {
    if (Math.random() > 0.25) {
        return Math.floor(Math.random() * (100 - 75 + 1)) + 75;
    } else {
        return Math.floor(Math.random() * (75 - 70 + 1)) + 70;
    }
}

return generateMetric()/100;