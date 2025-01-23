function calculateEngagementRate() {
    const totalEngagement = {{ filter.data }}.reduce((acc, entry) => acc + ((entry.avg_session_duration * entry.total_sessions)/ entry.total_sessions), 0);
    return totalEngagement;
}

return Math.floor(calculateEngagementRate());

