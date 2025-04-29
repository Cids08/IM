<?php
// Include database connection
require_once 'db.php';

// Query: count posts grouped by date
$sql = "
    SELECT DATE(created_at) AS date, COUNT(*) AS total_posts
    FROM posts
    GROUP BY DATE(created_at)
    ORDER BY DATE(created_at) ASC
";

// Prepare the query and execute it
$stmt = $pdo->query($sql);

// Prepare arrays for Chart.js
$labels = [];
$data = [];

if ($stmt->rowCount() > 0) {
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $labels[] = $row['date'];
        $data[] = $row['total_posts'];
    }
} else {
    echo json_encode(['error' => 'No post data available.']);
    exit;
}

// Format response
$response = [
    'labels' => $labels,
    'datasets' => [
        [
            'label' => 'Posts Over Time',
            'data' => $data,
            'borderColor' => '#10b981', // green line
            'backgroundColor' => 'rgba(16, 185, 129, 0.2)',
            'fill' => true,
            'tension' => 0.4,
        ],
    ],
];

// Output JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
