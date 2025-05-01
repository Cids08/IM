// Initialize charts when DOM is fully loaded
document.addEventListener('DOMContentLoaded', function() {
    initPostsOverTimeChart();
    initTopUsersByPostsChart();
    initTopUsersByEngagementChart();
});

// Initialize Posts Over Time Chart
function initPostsOverTimeChart() {
    fetch('api/data.php?action=posts_over_time')
        .then(response => response.json())
        .then(data => {
            const ctx = document.getElementById('postsOverTimeChart').getContext('2d');
            new Chart(ctx, {
                type: 'line',
                data: {
                    labels: data.labels,
                    datasets: [{
                        label: 'Number of Posts',
                        data: data.data,
                        fill: false,
                        borderColor: '#4a6fdc',
                        tension: 0.1,
                        backgroundColor: 'rgba(74, 111, 220, 0.1)',
                        borderWidth: 2,
                        pointBackgroundColor: '#4a6fdc',
                        pointRadius: 3
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    aspectRatio: 2,
                    scales: {
                        y: {
                            beginAtZero: true,
                            grid: {
                                drawBorder: false
                            },
                            ticks: {
                                precision: 0
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        },
                        tooltip: {
                            backgroundColor: 'rgba(0, 0, 0, 0.7)',
                            padding: 10,
                            cornerRadius: 4,
                            displayColors: false
                        }
                    }
                }
            });
        })
        .catch(error => {
            console.error('Error loading posts over time data:', error);
            document.getElementById('postsOverTimeChart').innerHTML = 'Error loading data';
        });
}

// Initialize Top Users By Posts Chart
function initTopUsersByPostsChart() {
    fetch('api/data.php?action=top_users_by_posts')
        .then(response => response.json())
        .then(data => {
            const ctx = document.getElementById('topUsersByPostsChart').getContext('2d');
            new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: data.labels,
                    datasets: [{
                        label: 'Number of Posts',
                        data: data.data,
                        backgroundColor: 'rgba(74, 111, 220, 0.7)',
                        borderColor: '#4a6fdc',
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    aspectRatio: 2,
                    indexAxis: 'y',
                    scales: {
                        x: {
                            beginAtZero: true,
                            grid: {
                                display: false
                            },
                            ticks: {
                                precision: 0
                            }
                        },
                        y: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });
        })
        .catch(error => {
            console.error('Error loading top users by posts data:', error);
            document.getElementById('topUsersByPostsChart').innerHTML = 'Error loading data';
        });
}

// Initialize Top Users By Engagement Chart
function initTopUsersByEngagementChart() {
    fetch('api/data.php?action=top_users_by_engagement')
        .then(response => response.json())
        .then(data => {
            const ctx = document.getElementById('topUsersByEngagementChart').getContext('2d');
            new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: data.labels,
                    datasets: [{
                        label: 'Total Engagement',
                        data: data.data,
                        backgroundColor: 'rgba(22, 163, 74, 0.7)',
                        borderColor: '#16a34a',
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    indexAxis: 'y',
                    scales: {
                        x: {
                            beginAtZero: true,
                            grid: {
                                display: false
                            },
                            ticks: {
                                precision: 0
                            }
                        },
                        y: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });
        })
        .catch(error => {
            console.error('Error loading top users by engagement data:', error);
            document.getElementById('topUsersByEngagementChart').innerHTML = 'Error loading data';
        });
}