<?php
// Include database connection
require_once 'db.php'; 

$response = [];

try {
    // Total Users
    $response['Total Users'] = $pdo->query("SELECT COUNT(*) FROM users")->fetchColumn() ?? 0;

    // Total Posts
    $response['Total Posts'] = $pdo->query("SELECT COUNT(*) FROM posts")->fetchColumn() ?? 0;

    // Total Likes
    $response['Total Likes'] = $pdo->query("SELECT COUNT(*) FROM likes")->fetchColumn() ?? 0;

    // Total Comments
    $response['Total Comments'] = $pdo->query("SELECT COUNT(*) FROM comments")->fetchColumn() ?? 0;

    // Total Shares
    $response['Total Shares'] = $pdo->query("SELECT COUNT(*) FROM shares")->fetchColumn() ?? 0;

    // Return JSON
    header('Content-Type: application/json');
    echo json_encode($response);

} catch (PDOException $e) {
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
