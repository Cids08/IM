<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facebook Dashboard</title>
    <link rel="icon" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>📊</text></svg>">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #1877F2;
            --primary-light: #E7F3FF;
            --secondary: #42b72a;
            --dark: #1c1e21;
            --light: #f0f2f5;
            --white: #ffffff;
            --gray: #65676b;
            --gray-light: #f5f5f5;
            --shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            --border-radius: 12px;
            --chart-text: #1c1e21;
        }
        
        [data-theme="dark"] {
            --primary: #2D88FF;
            --primary-light: #1e293b;
            --dark: #e4e6eb;
            --light: #18191a;
            --white: #242526;
            --gray: #b0b3b8;
            --gray-light: #3a3b3c;
            --shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
            --chart-text: #e4e6eb;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', 'Roboto', 'Helvetica Neue', sans-serif;
            background-color: var(--light);
            color: var(--dark);
            line-height: 1.6;
            padding: 2rem;
        }

        .dashboard {
            max-width: 1400px;
            margin: 0 auto;
        }

        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 2rem;
        }
        
        .header-left {
            display: flex;
            align-items: center;
        }

        .header i {
            font-size: 2rem;
            color: var(--primary);
            margin-right: 1rem;
        }

        h1 {
            font-size: 1.8rem;
            font-weight: 600;
            color: var(--dark);
        }
        
        .theme-toggle {
            background-color: var(--primary-light);
            color: var(--primary);
            border: none;
            border-radius: 20px;
            padding: 8px 16px;
            font-size: 0.9rem;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: all 0.3s ease;
        }
        
        .theme-toggle:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow);
        }
        
        .theme-toggle i {
            font-size: 1rem;
            margin-right: 0;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 2rem;
        }

        .card {
            background-color: var(--white);
            border-radius: var(--border-radius);
            box-shadow: var(--shadow);
            padding: 1.5rem;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1rem;
            padding-bottom: 0.5rem;
            border-bottom: 1px solid var(--gray-light);
        }

        .card-title {
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--dark);
            display: flex;
            align-items: center;
        }

        .card-title i {
            margin-right: 0.5rem;
            color: var(--primary);
        }

        ul#stats {
            list-style: none;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
            gap: 1rem;
        }

        ul#stats li {
            background-color: var(--primary-light);
            padding: 1rem;
            border-radius: 8px;
            display: flex;
            flex-direction: column;
        }

        ul#stats li strong {
            color: var(--primary);
            margin-bottom: 0.25rem;
        }

        .chart-container {
            position: relative;
            height: 300px;
            width: 100%;
        }

        canvas {
            width: 100% !important;
            height: 100% !important;
        }

        @media (max-width: 768px) {
            .grid {
                grid-template-columns: 1fr;
            }
            
            body {
                padding: 1rem;
            }
            
            ul#stats {
                grid-template-columns: 1fr 1fr;
            }
            
            .chart-container {
                height: 250px;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard">
        <div class="header">
            <div class="header-left">
                <i class="fab fa-facebook"></i>
                <h1>Facebook Activity Dashboard</h1>
            </div>
            <button id="themeToggle" class="theme-toggle">
                <i class="fas fa-moon"></i>
                <span>Dark Mode</span>
            </button>
        </div>

        <div class="grid">
            <div class="card">
                <div class="card-header">
                    <h2 class="card-title">
                        <i class="fas fa-chart-line"></i>
                        Total Engagement
                    </h2>
                </div>
                <ul id="stats"></ul>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2 class="card-title">
                        <i class="fas fa-users"></i>
                        Top 5 Users by Posts
                    </h2>
                </div>
                <div class="chart-container">
                    <canvas id="topUsersChart"></canvas>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2 class="card-title">
                        <i class="fas fa-calendar-alt"></i>
                        Posts Over Time
                    </h2>
                </div>
                <div class="chart-container">
                    <canvas id="postsOverTimeChart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Theme Toggle Functionality
        const themeToggleBtn = document.getElementById('themeToggle');
        const themeIcon = themeToggleBtn.querySelector('i');
        const themeText = themeToggleBtn.querySelector('span');
        
        // Check for saved theme preference
        const savedTheme = localStorage.getItem('theme') || 'light';
        document.documentElement.setAttribute('data-theme', savedTheme);
        
        // Update toggle button based on current theme
        updateThemeToggle(savedTheme);
        
        // Theme toggle event listener
        themeToggleBtn.addEventListener('click', () => {
            const currentTheme = document.documentElement.getAttribute('data-theme');
            const newTheme = currentTheme === 'light' ? 'dark' : 'light';
            
            document.documentElement.setAttribute('data-theme', newTheme);
            localStorage.setItem('theme', newTheme);
            
            updateThemeToggle(newTheme);
            
            // Force reload to refresh charts with new theme
            location.reload();
        });
        
        function updateThemeToggle(theme) {
            if (theme === 'dark') {
                themeIcon.className = 'fas fa-sun';
                themeText.textContent = 'Light Mode';
            } else {
                themeIcon.className = 'fas fa-moon';
                themeText.textContent = 'Dark Mode';
            }
        }

        // Total Engagement Stats
        fetch('TotalEngagementStats.php')
            .then(res => res.json())
            .then(data => {
                const stats = document.getElementById('stats');
                stats.innerHTML = Object.entries(data)
                    .map(([label, value]) => `<li><strong>${label}:</strong> ${value}</li>`)
                    .join('');
            })
            .catch(error => {
                console.error('Error fetching total engagement stats:', error);
                document.getElementById('stats').innerHTML = '<li><strong>Error:</strong> Could not load data</li>';
            });

        // Top Users Chart
        fetch('TopUsersByPosts.php')
            .then(res => res.json())
            .then(data => {
                const chartTextColor = getComputedStyle(document.documentElement).getPropertyValue('--chart-text').trim();
                
                window.usersChart = new Chart(document.getElementById('topUsersChart'), {
                    type: 'bar',
                    data: data,
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        plugins: {
                            legend: { 
                                display: false,
                                labels: {
                                    color: chartTextColor
                                }
                            }
                        },
                        scales: {
                            y: {
                                beginAtZero: true,
                                ticks: {
                                    precision: 0,
                                    color: chartTextColor
                                },
                                grid: {
                                    display: false
                                }
                            },
                            x: {
                                grid: {
                                    display: false
                                },
                                ticks: {
                                    color: chartTextColor
                                }
                            }
                        }
                    }
                });
            })
            .catch(error => {
                console.error('Error fetching top users data:', error);
                document.getElementById('topUsersChart').parentNode.innerHTML = 
                    '<div style="text-align: center; padding: 2rem;">Error loading chart data</div>';
            });

        // Posts Over Time Chart
        fetch('PostActivityOverTime.php')
            .then(res => res.json())
            .then(data => {
                const chartTextColor = getComputedStyle(document.documentElement).getPropertyValue('--chart-text').trim();
                const isDark = document.documentElement.getAttribute('data-theme') === 'dark';
                
                window.postsChart = new Chart(document.getElementById('postsOverTimeChart'), {
                    type: 'line',
                    data: data,
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        scales: {
                            x: { 
                                title: { 
                                    display: true, 
                                    text: 'Date',
                                    color: chartTextColor
                                },
                                grid: {
                                    display: false
                                },
                                ticks: {
                                    color: chartTextColor
                                }
                            },
                            y: { 
                                title: { 
                                    display: true, 
                                    text: 'Posts',
                                    color: chartTextColor
                                },
                                beginAtZero: true,
                                grid: {
                                    color: isDark ? 'rgba(255, 255, 255, 0.1)' : 'rgba(0, 0, 0, 0.05)'
                                },
                                ticks: {
                                    color: chartTextColor
                                }
                            }
                        },
                        plugins: {
                            legend: {
                                labels: {
                                    color: chartTextColor
                                }
                            },
                            tooltip: {
                                backgroundColor: isDark ? 'rgba(36, 37, 38, 0.9)' : 'rgba(255, 255, 255, 0.9)',
                                titleColor: isDark ? '#e4e6eb' : '#1c1e21',
                                bodyColor: isDark ? '#e4e6eb' : '#1c1e21',
                                borderColor: isDark ? '#3a3b3c' : '#e4e6eb',
                                borderWidth: 1,
                                displayColors: false,
                                padding: 10,
                                cornerRadius: 6
                            }
                        }
                    }
                });
            })
            .catch(error => {
                console.error('Error fetching posts over time data:', error);
                document.getElementById('postsOverTimeChart').parentNode.innerHTML = 
                    '<div style="text-align: center; padding: 2rem;">Error loading chart data</div>';
            });
    </script>
</body>
</html>