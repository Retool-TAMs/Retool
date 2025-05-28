function generateOscillatingMetric() {
    return (Math.random() * (0.09 - 0.01)) + 0.01;
}

return (generateOscillatingMetric()* 100).toFixed(2);