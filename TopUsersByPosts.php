<?php
// Include database connection
require_once 'db.php'; 

// Fetch top 5 users by number of posts, including user names
$sql = "
    SELECT users.name AS user_name, COUNT(posts.id) AS post_count
    FROM posts
    JOIN users ON posts.user_id = users.id
    GROUP BY users.id, users.name
    ORDER BY post_count DESC
    LIMIT 5
";

// Execute the query using PDO
$stmt = $pdo->query($sql);

// Initialize arrays for labels and data
$labels = [];
$data = [];

if ($stmt->rowCount() > 0) {
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $labels[] = $row['user_name'];
        $data[] = $row['post_count'];
    }
} else {
    echo json_encode(['error' => 'No data found.']);
    exit;
}

// Format for Chart.js
$response = [
    'labels' => $labels,
    'datasets' => [
        [
            'label' => 'Posts by User',
            'data' => $data,
            'backgroundColor' => '#3b82f6',
            'borderColor' => '#2563eb',
            'borderWidth' => 1,
        ],
    ],
];

// Send JSON response
header('Content-Type: application/json');
echo json_encode($response);
?>
