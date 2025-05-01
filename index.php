<?php
require_once 'config.php';
require_once 'functions.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Social Media Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="dashboard">
        <div class="dashboard-header">
            <div>
                <h1>Social Media Analytics Dashboard</h1>
                <p>Real-time metrics and insights</p>
            </div>
            
            <!-- Theme Toggle Switch -->
            <div class="theme-toggle">
                <i class="fas fa-sun"></i>
                <label class="theme-toggle-switch">
                    <input type="checkbox" id="themeToggle">
                    <span class="theme-toggle-slider"></span>
                </label>
                <i class="fas fa-moon"></i>
            </div>
        </div>
        
        <div class="stats-grid">
            <?php
            $totalUsers = countUsers($conn);
            $totalPosts = countPosts($conn);
            $totalReacts = countReacts($conn);
            $totalComments = countComments($conn);
            $totalShares = countShares($conn);
            $totalEngagement = $totalReacts + $totalComments + $totalShares;
            ?>
            <div class="stat-card">
                <div class="icon-container">
                    <div class="icon icon-primary">
                        <i class="fas fa-users"></i>
                    </div>
                </div>
                <h3>Total Users</h3>
                <div class="number"><?php echo $totalUsers; ?></div>
            </div>
            <div class="stat-card">
                <div class="icon-container">
                    <div class="icon icon-primary">
                        <i class="fas fa-file-alt"></i>
                    </div>
                </div>
                <h3>Total Posts</h3>
                <div class="number"><?php echo $totalPosts; ?></div>
            </div>
            <div class="stat-card">
                <div class="icon-container">
                    <div class="icon icon-success">
                        <i class="fas fa-thumbs-up"></i>
                    </div>
                </div>
                <h3>Total Reactions</h3>
                <div class="number"><?php echo $totalReacts; ?></div>
            </div>
            <div class="stat-card">
                <div class="icon-container">
                    <div class="icon icon-success">
                        <i class="fas fa-comment"></i>
                    </div>
                </div>
                <h3>Total Comments</h3>
                <div class="number"><?php echo $totalComments; ?></div>
            </div>
            <div class="stat-card">
                <div class="icon-container">
                    <div class="icon icon-success">
                        <i class="fas fa-share-alt"></i>
                    </div>
                </div>
                <h3>Total Shares</h3>
                <div class="number"><?php echo $totalShares; ?></div>
            </div>
            <div class="stat-card">
                <div class="icon-container">
                    <div class="icon icon-warning">
                        <i class="fas fa-chart-line"></i>
                    </div>
                </div>
                <h3>Total Engagement</h3>
                <div class="number"><?php echo $totalEngagement; ?></div>
            </div>
        </div>
        
        <div class="chart-container">
            <div class="chart-header">
                <h2>Posts Over Time</h2>
            </div>
            <canvas id="postsOverTimeChart"></canvas>
        </div>
        
        <div class="grid-2">
            <div class="chart-container">
                <div class="chart-header">
                    <h2>Top 10 Users by Posts</h2>
                </div>
                <canvas id="topUsersByPostsChart"></canvas>
            </div>
            
            <div class="chart-container">
                <div class="chart-header">
                    <h2>Top 10 Users by Engagement</h2>
                </div>
                <canvas id="topUsersByEngagementChart"></canvas>
            </div>
        </div>
        
        <div class="table-container">
            <div class="table-header">
                <h2>User Engagement Metrics</h2>
            </div>
            
            <!-- Search and Pagination Controls -->
            <div class="table-tools">
                <div class="search-box">
                    <input type="text" id="searchInput" placeholder="Search users..." autofocus>
                    <i class="fas fa-search"></i>
                </div>
            </div>
            
            <table id="userEngagementTable">
                <thead>
                    <tr>
                        <th>User</th>
                        <th>Posts</th>
                        <th>Reactions</th>
                        <th>Comments</th>
                        <th>Shares</th>
                        <th>Total Engagement</th>
                    </tr>
                </thead>
                <tbody id="tableBody">
                    <?php
                    $userMetrics = getUserEngagementMetrics($conn);
                    foreach ($userMetrics as $user) {
                        $totalUserEngagement = $user['reactions'] + $user['comments'] + $user['shares'];
                        echo "<tr>
                                <td>{$user['name']}</td>
                                <td>{$user['posts']}</td>
                                <td>{$user['reactions']}</td>
                                <td>{$user['comments']}</td>
                                <td>{$user['shares']}</td>
                                <td>{$totalUserEngagement}</td>
                              </tr>";
                    }
                    ?>
                </tbody>
            </table>
            
            <!-- No Results Message -->
            <div id="noResultsMessage" class="no-results" style="display: none;">
                No matching users found
            </div>
            
            <!-- Pagination Controls -->
            <div class="table-footer">
                <div class="showing-entries">
                    Showing <span id="startRange">1</span> to <span id="endRange">10</span> of <span id="totalEntries">0</span> entries
                </div>
                <div class="pagination-container">
                    <ul class="pagination" id="pagination">
                        <!-- Pagination will be generated by JavaScript -->
                    </ul>
                </div>
                <div class="rows-per-page">
                    <span>Rows per page:</span>
                    <select id="rowsPerPage">
                        <option value="5">5</option>
                        <option value="10" selected>10</option>
                        <option value="25">25</option>
                        <option value="50">50</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="footer">
        <p>Social Media Analytics Dashboard &copy; <?php echo date('Y'); ?></p>
    </footer>
    <script src="js/dashboard.js"></script>
    <script>
      // Declare chart variables in global scope so they can be accessed by all functions
let postsOverTimeChart, topUsersByPostsChart, topUsersByEngagementChart;

document.addEventListener('DOMContentLoaded', function() {
    // Initialize charts first
    initCharts();
    
    // Initialize pagination and search
    initTableFunctionality();
    
    // Initialize theme toggle after charts are created
    initThemeToggle();
});

function initCharts() {
    // Initialize your charts and assign them to the global variables
    postsOverTimeChart = initPostsOverTimeChart();
    topUsersByPostsChart = initTopUsersByPostsChart();
    topUsersByEngagementChart = initTopUsersByEngagementChart();
}

function initTableFunctionality() {
    const table = document.getElementById('userEngagementTable');
    const tableBody = document.getElementById('tableBody');
    const searchInput = document.getElementById('searchInput');
    const rowsPerPageSelect = document.getElementById('rowsPerPage');
    const paginationContainer = document.getElementById('pagination');
    const startRangeElement = document.getElementById('startRange');
    const endRangeElement = document.getElementById('endRange');
    const totalEntriesElement = document.getElementById('totalEntries');
    const noResultsMessage = document.getElementById('noResultsMessage');
    
    // Store all table rows for reference
    const allRows = Array.from(tableBody.querySelectorAll('tr'));
    totalEntriesElement.innerText = allRows.length;
    
    // Initialize settings
    let currentPage = 1;
    let rowsPerPage = parseInt(rowsPerPageSelect.value);
    let filteredRows = allRows;
    
    // Search functionality
    searchInput.addEventListener('input', function() {
        const searchTerm = this.value.toLowerCase();
        
        // Filter rows based on search term
        filteredRows = allRows.filter(row => {
            const text = row.textContent.toLowerCase();
            return text.includes(searchTerm);
        });
        
        // Reset to first page when searching
        currentPage = 1;
        
        // Update display
        updateTable();
    });
    
    // Rows per page change event
    rowsPerPageSelect.addEventListener('change', function() {
        rowsPerPage = parseInt(this.value);
        currentPage = 1; // Reset to first page
        updateTable();
    });
    
    // Function to update table data based on current filters and pagination
    function updateTable() {
        // Clear table body
        tableBody.innerHTML = '';
        
        // Show/hide no results message
        if (filteredRows.length === 0) {
            noResultsMessage.style.display = 'block';
            table.style.display = 'none';
            paginationContainer.style.display = 'none';
            startRangeElement.innerText = '0';
            endRangeElement.innerText = '0';
            totalEntriesElement.innerText = '0';
            return;
        } else {
            noResultsMessage.style.display = 'none';
            table.style.display = 'table';
            paginationContainer.style.display = 'flex';
        }
        
        // Calculate pagination metrics
        const totalPages = Math.ceil(filteredRows.length / rowsPerPage);
        
        // Handle edge case if current page is now greater than available pages
        if (currentPage > totalPages) {
            currentPage = totalPages;
        }
        
        const startIndex = (currentPage - 1) * rowsPerPage;
        const endIndex = Math.min(startIndex + rowsPerPage, filteredRows.length);
        
        // Update range display
        startRangeElement.innerText = filteredRows.length > 0 ? startIndex + 1 : 0;
        endRangeElement.innerText = endIndex;
        totalEntriesElement.innerText = filteredRows.length;
        
        // Add rows for the current page
        for (let i = startIndex; i < endIndex; i++) {
            tableBody.appendChild(filteredRows[i].cloneNode(true));
        }
        
        // Update pagination controls
        updatePagination(totalPages);
    }
    
    // Function to update pagination controls
    function updatePagination(totalPages) {
        paginationContainer.innerHTML = '';
        
        // Add "Previous" button
        const prevLi = document.createElement('li');
        prevLi.className = 'pagination-item';
        const prevLink = document.createElement('a');
        prevLink.href = '#';
        prevLink.className = `pagination-link ${currentPage === 1 ? 'disabled' : ''}`;
        prevLink.innerHTML = '<i class="fas fa-chevron-left"></i>';
        prevLink.addEventListener('click', function(e) {
            e.preventDefault();
            if (currentPage > 1) {
                currentPage--;
                updateTable();
            }
        });
        prevLi.appendChild(prevLink);
        paginationContainer.appendChild(prevLi);
        
        // Determine page range to display
        let startPage = Math.max(1, currentPage - 2);
        let endPage = Math.min(totalPages, startPage + 4);
        
        // Adjust start page if we're near the end
        if (totalPages - endPage < 2) {
            startPage = Math.max(1, endPage - 4);
        }
        
        // Add first page and ellipsis if needed
        if (startPage > 1) {
            addPageNumberButton(1);
            if (startPage > 2) {
                addEllipsis();
            }
        }
        
        // Add page numbers
        for (let i = startPage; i <= endPage; i++) {
            addPageNumberButton(i);
        }
        
        // Add ellipsis and last page if needed
        if (endPage < totalPages) {
            if (endPage < totalPages - 1) {
                addEllipsis();
            }
            addPageNumberButton(totalPages);
        }
        
        // Add "Next" button
        const nextLi = document.createElement('li');
        nextLi.className = 'pagination-item';
        const nextLink = document.createElement('a');
        nextLink.href = '#';
        nextLink.className = `pagination-link ${currentPage === totalPages ? 'disabled' : ''}`;
        nextLink.innerHTML = '<i class="fas fa-chevron-right"></i>';
        nextLink.addEventListener('click', function(e) {
            e.preventDefault();
            if (currentPage < totalPages) {
                currentPage++;
                updateTable();
            }
        });
        nextLi.appendChild(nextLink);
        paginationContainer.appendChild(nextLi);
        
        // Helper function to add page number buttons
        function addPageNumberButton(pageNum) {
            const li = document.createElement('li');
            li.className = 'pagination-item';
            const link = document.createElement('a');
            link.href = '#';
            link.className = `pagination-link ${pageNum === currentPage ? 'active' : ''}`;
            link.textContent = pageNum;
            link.addEventListener('click', function(e) {
                e.preventDefault();
                currentPage = pageNum;
                updateTable();
            });
            li.appendChild(link);
            paginationContainer.appendChild(li);
        }
        
        // Helper function to add ellipsis
        function addEllipsis() {
            const li = document.createElement('li');
            li.className = 'pagination-item';
            const span = document.createElement('span');
            span.className = 'pagination-link';
            span.textContent = '...';
            li.appendChild(span);
            paginationContainer.appendChild(li);
        }
    }
    
    // Initial setup
    updateTable();
}

function initThemeToggle() {
    const themeToggle = document.getElementById('themeToggle');
    
    // Check for saved theme preference or use device preference
    const prefersDarkScheme = window.matchMedia('(prefers-color-scheme: dark)');
    
    // Load saved theme or use device preference
    const isDarkMode = localStorage.getItem('theme') === 'dark' || 
                      (!localStorage.getItem('theme') && prefersDarkScheme.matches);
    
    // Apply theme
    if (isDarkMode) {
        document.body.classList.add('dark-mode');
        themeToggle.checked = true;
    } else {
        document.body.classList.remove('dark-mode');
        themeToggle.checked = false;
    }
    
    // Update chart colors based on current theme
    updateChartColors(isDarkMode);
    
    // Theme toggle event listener
    themeToggle.addEventListener('change', function() {
        const isDark = this.checked;
        
        if (isDark) {
            document.body.classList.add('dark-mode');
            localStorage.setItem('theme', 'dark');
        } else {
            document.body.classList.remove('dark-mode');
            localStorage.setItem('theme', 'light');
        }
        
        // Update chart colors when theme changes
        updateChartColors(isDark);
    });
}

// Improved function to update chart colors based on theme
function updateChartColors(isDark) {
    // Set chart text colors based on theme
    const textColor = isDark ? '#e5e7eb' : '#4b5563';
    const gridColor = isDark ? 'rgba(255, 255, 255, 0.1)' : 'rgba(0, 0, 0, 0.1)';
    const borderColor = isDark ? 'rgba(255, 255, 255, 0.2)' : 'rgba(0, 0, 0, 0.1)';
    
    // Get all charts from the page
    const charts = [
        postsOverTimeChart, 
        topUsersByPostsChart, 
        topUsersByEngagementChart
    ];
    
    // Common chart options update
    const fontOptions = {
        color: textColor,
        family: "'Inter', 'Segoe UI', system-ui, -apple-system, sans-serif"
    };
    
    charts.forEach(chart => {
        if (chart && chart.options) {
            // Update scale labels and grid lines
            if (chart.options.scales) {
                Object.keys(chart.options.scales).forEach(axis => {
                    if (chart.options.scales[axis].ticks) {
                        chart.options.scales[axis].ticks.color = textColor;
                        chart.options.scales[axis].ticks.font = fontOptions;
                    }
                    if (chart.options.scales[axis].grid) {
                        chart.options.scales[axis].grid.color = gridColor;
                        chart.options.scales[axis].grid.borderColor = borderColor;
                    }
                    // Ensure axis title is visible
                    if (chart.options.scales[axis].title) {
                        chart.options.scales[axis].title.color = textColor;
                        chart.options.scales[axis].title.font = {
                            ...fontOptions,
                            weight: 600
                        };
                    }
                });
            }
            
            // Update legend labels
            if (chart.options.plugins && chart.options.plugins.legend) {
                chart.options.plugins.legend.labels.color = textColor;
                chart.options.plugins.legend.labels.font = fontOptions;
            }
            
            // Update title 
            if (chart.options.plugins && chart.options.plugins.title) {
                chart.options.plugins.title.color = textColor;
                chart.options.plugins.title.font = {
                    ...fontOptions,
                    weight: 700,
                    size: 16
                };
            }
            
            // Update tooltip styles
            if (chart.options.plugins && chart.options.plugins.tooltip) {
                chart.options.plugins.tooltip.backgroundColor = isDark ? '#374151' : 'rgba(255, 255, 255, 0.9)';
                chart.options.plugins.tooltip.titleColor = isDark ? '#f9fafb' : '#111827';
                chart.options.plugins.tooltip.bodyColor = isDark ? '#e5e7eb' : '#4b5563';
                chart.options.plugins.tooltip.borderColor = isDark ? '#4b5563' : '#e5e7eb';
            }
            
            // Force chart update
            chart.update('none'); // Use 'none' mode for better performance
        }
    });
}

// Initialize the charts with correct theme
function initPostsOverTimeChart() {
    // Get current theme state
    const isDarkMode = document.body.classList.contains('dark-mode');
    const textColor = isDarkMode ? '#e5e7eb' : '#4b5563';
    const gridColor = isDarkMode ? 'rgba(255, 255, 255, 0.1)' : 'rgba(0, 0, 0, 0.1)';
    
    const ctx = document.getElementById('postsOverTimeChart').getContext('2d');
    return new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [{
                label: 'Posts',
                data: [1200, 1900, 3000, 5000, 6000, 4000, 7000, 8000, 6500, 5500, 7500, 9000],
                borderColor: '#3a56d4',
                backgroundColor: 'rgba(58, 86, 212, 0.1)',
                tension: 0.3,
                fill: true
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                x: {
                    grid: {
                        color: gridColor
                    },
                    ticks: {
                        color: textColor
                    }
                },
                y: {
                    beginAtZero: true,
                    grid: {
                        color: gridColor
                    },
                    ticks: {
                        color: textColor
                    }
                }
            },
            plugins: {
                legend: {
                    labels: {
                        color: textColor
                    }
                }
            }
        }
    });
}

function initTopUsersByPostsChart() {
    // Get current theme state
    const isDarkMode = document.body.classList.contains('dark-mode');
    const textColor = isDarkMode ? '#e5e7eb' : '#4b5563';
    const gridColor = isDarkMode ? 'rgba(255, 255, 255, 0.1)' : 'rgba(0, 0, 0, 0.1)';
    
    const ctx = document.getElementById('topUsersByPostsChart').getContext('2d');
    return new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['User 1', 'User 2', 'User 3', 'User 4', 'User 5', 'User 6', 'User 7', 'User 8', 'User 9', 'User 10'],
            datasets: [{
                label: 'Posts',
                data: [450, 390, 320, 300, 290, 220, 190, 180, 170, 150],
                backgroundColor: '#3a56d4',
                borderRadius: 4
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                x: {
                    grid: {
                        display: false,
                        color: gridColor
                    },
                    ticks: {
                        color: textColor
                    }
                },
                y: {
                    beginAtZero: true,
                    grid: {
                        color: gridColor
                    },
                    ticks: {
                        color: textColor
                    }
                }
            },
            plugins: {
                legend: {
                    labels: {
                        color: textColor
                    }
                }
            }
        }
    });
}

function initTopUsersByEngagementChart() {
    // Get current theme state
    const isDarkMode = document.body.classList.contains('dark-mode');
    const textColor = isDarkMode ? '#e5e7eb' : '#4b5563';
    const gridColor = isDarkMode ? 'rgba(255, 255, 255, 0.1)' : 'rgba(0, 0, 0, 0.1)';
    
    const ctx = document.getElementById('topUsersByEngagementChart').getContext('2d');
    return new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['User 1', 'User 2', 'User 3', 'User 4', 'User 5', 'User 6', 'User 7', 'User 8', 'User 9', 'User 10'],
            datasets: [{
                label: 'Engagement',
                data: [950, 870, 820, 750, 730, 700, 680, 650, 620, 600],
                backgroundColor: '#059669',
                borderRadius: 4
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                x: {
                    grid: {
                        display: false,
                        color: gridColor
                    },
                    ticks: {
                        color: textColor
                    }
                },
                y: {
                    beginAtZero: true,
                    grid: {
                        color: gridColor
                    },
                    ticks: {
                        color: textColor
                    }
                }
            },
            plugins: {
                legend: {
                    labels: {
                        color: textColor
                    }
                }
            }
        }
    });
}

// Additional CSS fixes for dark mode tables
function applyDarkModeTableFixes() {
    // Add this to document when theme changes
    const style = document.createElement('style');
    style.textContent = `
        .dark-mode .table-container {
            color: var(--text-primary);
        }
        .dark-mode .table-header h2 {
            color: var(--text-primary);
        }
        .dark-mode table th {
            background-color: var(--bg-tertiary);
            color: var(--text-secondary);
        }
        .dark-mode table td {
            color: var(--text-secondary);
        }
        .dark-mode .showing-entries,
        .dark-mode .rows-per-page {
            color: var(--text-tertiary);
        }
        .dark-mode .no-results {
            color: var(--text-tertiary);
            background-color: var(--bg-tertiary);
        }
        .dark-mode .search-box input {
            background-color: var(--bg-secondary);
            color: var(--text-primary);
        }
    `;
    document.head.appendChild(style);
}

// Apply theme toggle with immediate chart updates
function initThemeToggle() {
    const themeToggle = document.getElementById('themeToggle');
    
    // Check for saved theme preference or use device preference
    const prefersDarkScheme = window.matchMedia('(prefers-color-scheme: dark)');
    
    // Load saved theme or use device preference
    const isDarkMode = localStorage.getItem('theme') === 'dark' || 
                      (!localStorage.getItem('theme') && prefersDarkScheme.matches);
    
    // Apply theme
    if (isDarkMode) {
        document.body.classList.add('dark-mode');
        themeToggle.checked = true;
        // Apply dark mode table fixes
        applyDarkModeTableFixes();
    } else {
        document.body.classList.remove('dark-mode');
        themeToggle.checked = false;
    }
    
    // Update chart colors based on current theme
    updateChartColors(isDarkMode);
    
    // Theme toggle event listener
    themeToggle.addEventListener('change', function() {
        const isDark = this.checked;
        
        if (isDark) {
            document.body.classList.add('dark-mode');
            localStorage.setItem('theme', 'dark');
            // Apply dark mode table fixes
            applyDarkModeTableFixes();
        } else {
            document.body.classList.remove('dark-mode');
            localStorage.setItem('theme', 'light');
        }
        
        // Update chart colors when theme changes
        updateChartColors(isDark);
    });
}
    </script>
    <script src="js/dashboard.js"></script>
</body>
</html>