<?php
require_once '../config.php';
require_once '../functions.php';

header('Content-Type: application/json');

// Check what data is being requested
$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case 'posts_over_time':
        echo json_encode(getPostsOverTimeData($conn));
        break;
        
    case 'top_users_by_posts':
        echo json_encode(getTopUsersByPostsData($conn));
        break;
        
    case 'top_users_by_engagement':
        echo json_encode(getTopUsersByEngagementData($conn));
        break;
        
    default:
        echo json_encode(['error' => 'Invalid action']);
}