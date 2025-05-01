<?php
// Database connection configuration
$servername = "localhost";
$username = "root";  // Replace with your database username
$password = "";      // Replace with your database password
$dbname = "fbf";  // Replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to get total counts
function getTotalCounts($conn) {
    $counts = array();
    
    // Total posts
    $sql = "SELECT COUNT(*) as total FROM posts";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $counts['posts'] = $row['total'];
    
    // Total reactions
    $sql = "SELECT COUNT(*) as total FROM reacts";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $counts['reacts'] = $row['total'];
    
    // Total comments
    $sql = "SELECT COUNT(*) as total FROM comments";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $counts['comments'] = $row['total'];
    
    // Total shares
    $sql = "SELECT COUNT(*) as total FROM shares";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $counts['shares'] = $row['total'];
    
    // Total users
    $sql = "SELECT COUNT(*) as total FROM users";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $counts['users'] = $row['total'];
    
    return $counts;
}

// Function to get posts over time (by month)
function getPostsOverTime($conn) {
    $sql = "SELECT 
                DATE_FORMAT(created_at, '%Y-%m') as month,
                COUNT(*) as count
            FROM posts
            GROUP BY DATE_FORMAT(created_at, '%Y-%m')
            ORDER BY month ASC";
    
    $result = $conn->query($sql);
    $data = array();
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    
    return $data;
}

// Function to get top 10 users by post count
function getTopUsersByPosts($conn) {
    $sql = "SELECT 
                u.id,
                u.name,
                COUNT(p.id) as post_count
            FROM 
                users u
            LEFT JOIN 
                posts p ON p.user_id = u.id
            GROUP BY 
                u.id
            ORDER BY 
                post_count DESC
            LIMIT 10";
    
    $result = $conn->query($sql);
    $data = array();
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    
    return $data;
}

// Function to get top 10 users by reactions
function getTopUsersByReacts($conn) {
    $sql = "SELECT 
                u.id,
                u.name,
                COUNT(r.id) as react_count
            FROM 
                users u
            LEFT JOIN 
                posts p ON p.user_id = u.id
            LEFT JOIN 
                reacts r ON r.post_id = p.id
            GROUP BY 
                u.id
            ORDER BY 
                react_count DESC
            LIMIT 10";
    
    $result = $conn->query($sql);
    $data = array();
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    
    return $data;
}

// Function to get top 10 users by comments
function getTopUsersByComments($conn) {
    $sql = "SELECT 
                u.id,
                u.name,
                COUNT(c.id) as comment_count
            FROM 
                users u
            LEFT JOIN 
                posts p ON p.user_id = u.id
            LEFT JOIN 
                comments c ON c.post_id = p.id
            GROUP BY 
                u.id
            ORDER BY 
                comment_count DESC
            LIMIT 10";
    
    $result = $conn->query($sql);
    $data = array();
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    
    return $data;
}

// Function to get top 10 users by shares
function getTopUsersByShares($conn) {
    $sql = "SELECT 
                u.id,
                u.name,
                COUNT(s.id) as share_count
            FROM 
                users u
            LEFT JOIN 
                posts p ON p.user_id = u.id
            LEFT JOIN 
                shares s ON s.post_id = p.id
            GROUP BY 
                u.id
            ORDER BY 
                share_count DESC
            LIMIT 10";
    
    $result = $conn->query($sql);
    $data = array();
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    
    return $data;
}

// Function to get all users with their engagement stats
function getAllUsersWithStats($conn) {
    $sql = "SELECT 
                u.id,
                u.name,
                COUNT(DISTINCT p.id) as post_count,
                COUNT(DISTINCT r.id) as react_count,
                COUNT(DISTINCT c.id) as comment_count,
                COUNT(DISTINCT s.id) as share_count
            FROM 
                users u
            LEFT JOIN 
                posts p ON p.user_id = u.id
            LEFT JOIN 
                reacts r ON r.post_id = p.id
            LEFT JOIN 
                comments c ON c.post_id = p.id
            LEFT JOIN 
                shares s ON s.post_id = p.id
            GROUP BY 
                u.id
            ORDER BY 
                post_count DESC";
    
    $result = $conn->query($sql);
    $data = array();
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    
    return $data;
}

// Get all the data needed for the dashboard
$totalCounts = getTotalCounts($conn);
$postsOverTime = getPostsOverTime($conn);
$topUsersByPosts = getTopUsersByPosts($conn);
$topUsersByReacts = getTopUsersByReacts($conn);
$topUsersByComments = getTopUsersByComments($conn);
$topUsersByShares = getTopUsersByShares($conn);
$allUsers = getAllUsersWithStats($conn);

// Close connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Social Media Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f5f5f5;
            color: #333;
            line-height: 1.6;
        }
        
        .container {
            width: 90%;
            margin: 20px auto;
        }
        
        header {
            background-color: #2c3e50;
            color: #fff;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .summary-cards {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .card {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            flex: 1;
            min-width: 200px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        
        .card:hover {
            transform: translateY(-5px);
        }
        
        .card-icon {
            font-size: 24px;
            margin-bottom: 10px;
        }
        
        .card-title {
            font-size: 14px;
            color: #777;
            margin-bottom: 5px;
        }
        
        .card-value {
            font-size: 28px;
            font-weight: bold;
        }
        
        .chart-container {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 30px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .chart-title {
            font-size: 18px;
            margin-bottom: 20px;
            color: #2c3e50;
        }
        
        .flex-container {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .flex-container > div {
            flex: 1;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        table th, table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        table th {
            background-color: #f8f9fa;
            color: #2c3e50;
            font-weight: 600;
        }
        
        table tr:hover {
            background-color: #f5f5f5;
        }
        
        .text-center {
            text-align: center;
        }
        
        .mb-20 {
            margin-bottom: 20px;
        }
        
        .posts-icon { color: #3498db; }
        .reacts-icon { color: #e74c3c; }
        .comments-icon { color: #2ecc71; }
        .shares-icon { color: #f39c12; }
        .users-icon { color: #9b59b6; }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Social Media Dashboard</h1>
            <p>Overview of engagement metrics and user statistics</p>
        </header>
        
        <!-- Summary Cards -->
        <div class="summary-cards">
            <div class="card">
                <div class="card-icon posts-icon">
                    <i class="fas fa-file-alt"></i>
                </div>
                <div class="card-title">TOTAL POSTS</div>
                <div class="card-value"><?php echo $totalCounts['posts']; ?></div>
            </div>
            
            <div class="card">
                <div class="card-icon reacts-icon">
                    <i class="fas fa-thumbs-up"></i>
                </div>
                <div class="card-title">TOTAL REACTIONS</div>
                <div class="card-value"><?php echo $totalCounts['reacts']; ?></div>
            </div>
            
            <div class="card">
                <div class="card-icon comments-icon">
                    <i class="fas fa-comment"></i>
                </div>
                <div class="card-title">TOTAL COMMENTS</div>
                <div class="card-value"><?php echo $totalCounts['comments']; ?></div>
            </div>
            
            <div class="card">
                <div class="card-icon shares-icon">
                    <i class="fas fa-share-alt"></i>
                </div>
                <div class="card-title">TOTAL SHARES</div>
                <div class="card-value"><?php echo $totalCounts['shares']; ?></div>
            </div>
            
            <div class="card">
                <div class="card-icon users-icon">
                    <i class="fas fa-users"></i>
                </div>
                <div class="card-title">TOTAL USERS</div>
                <div class="card-value"><?php echo $totalCounts['users']; ?></div>
            </div>
        </div>
        
        <!-- Posts Over Time Chart -->
        <div class="chart-container">
            <h2 class="chart-title">Posts Over Time</h2>
            <canvas id="postsOverTimeChart"></canvas>
        </div>
        
        <!-- Top Users by Posts & Reactions -->
        <div class="flex-container">
            <div>
                <h2 class="chart-title">Top 10 Users by Posts</h2>
                <table>
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>Posts</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($topUsersByPosts as $user): ?>
                        <tr>
                            <td><?php echo htmlspecialchars($user['name']); ?></td>
                            <td><?php echo $user['post_count']; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            
            <div>
                <h2 class="chart-title">Top 10 Users by Reactions</h2>
                <table>
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>Reactions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($topUsersByReacts as $user): ?>
                        <tr>
                            <td><?php echo htmlspecialchars($user['name']); ?></td>
                            <td><?php echo $user['react_count']; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
        
        <!-- Top Users by Comments & Shares -->
        <div class="flex-container">
            <div>
                <h2 class="chart-title">Top 10 Users by Comments</h2>
                <table>
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>Comments</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($topUsersByComments as $user): ?>
                        <tr>
                            <td><?php echo htmlspecialchars($user['name']); ?></td>
                            <td><?php echo $user['comment_count']; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            
            <div>
                <h2 class="chart-title">Top 10 Users by Shares</h2>
                <table>
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>Shares</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($topUsersByShares as $user): ?>
                        <tr>
                            <td><?php echo htmlspecialchars($user['name']); ?></td>
                            <td><?php echo $user['share_count']; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
        
        <!-- All Users with Stats -->
        <div class="chart-container">
            <h2 class="chart-title">All Users Engagement</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Posts</th>
                        <th>Reactions</th>
                        <th>Comments</th>
                        <th>Shares</th>
                        <th>Total Engagement</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($allUsers as $user): 
                        $totalEngagement = $user['react_count'] + $user['comment_count'] + $user['share_count'];
                    ?>
                    <tr>
                        <td><?php echo $user['id']; ?></td>
                        <td><?php echo htmlspecialchars($user['name']); ?></td>
                        <td><?php echo $user['post_count']; ?></td>
                        <td><?php echo $user['react_count']; ?></td>
                        <td><?php echo $user['comment_count']; ?></td>
                        <td><?php echo $user['share_count']; ?></td>
                        <td><strong><?php echo $totalEngagement; ?></strong></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        // Initialize the Posts Over Time Chart
        const postsOverTimeLabels = [
            <?php 
                foreach ($postsOverTime as $item) {
                    echo "'" . $item['month'] . "', ";
                }
            ?>
        ];
        
        const postsOverTimeData = [
            <?php 
                foreach ($postsOverTime as $item) {
                    echo $item['count'] . ", ";
                }
            ?>
        ];
        
        const postsOverTimeChart = new Chart(
            document.getElementById('postsOverTimeChart'),
            {
                type: 'line',
                data: {
                    labels: postsOverTimeLabels,
                    datasets: [{
                        label: 'Number of Posts',
                        data: postsOverTimeData,
                        fill: false,
                        borderColor: '#3498db',
                        tension: 0.1
                    }]
                },
                options: {
                    responsive: true,
                    scales: {
                        y: {
                            beginAtZero: true,
                            title: {
                                display: true,
                                text: 'Number of Posts'
                            }
                        },
                        x: {
                            title: {
                                display: true,
                                text: 'Month'
                            }
                        }
                    }
                }
            }
        );
    </script>
</body>
</html>