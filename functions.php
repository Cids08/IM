<?php
/**
 * Get the count of total users
 */
function countUsers($conn) {
    $stmt = $conn->query("SELECT COUNT(*) FROM users");
    return $stmt->fetchColumn();
}

/**
 * Get the count of total posts
 */
function countPosts($conn) {
    $stmt = $conn->query("SELECT COUNT(*) FROM posts");
    return $stmt->fetchColumn();
}

/**
 * Get the count of total reactions
 */
function countReacts($conn) {
    $stmt = $conn->query("SELECT COUNT(*) FROM reacts");
    return $stmt->fetchColumn();
}

/**
 * Get the count of total comments
 */
function countComments($conn) {
    $stmt = $conn->query("SELECT COUNT(*) FROM comments");
    return $stmt->fetchColumn();
}

/**
 * Get the count of total shares
 */
function countShares($conn) {
    $stmt = $conn->query("SELECT COUNT(*) FROM shares");
    return $stmt->fetchColumn();
}

/**
 * Get posts over time data for the chart
 */
function getPostsOverTime($conn) {
    $stmt = $conn->query("
        SELECT 
            DATE_FORMAT(created_at, '%Y-%m-%d') as date,
            COUNT(*) as count
        FROM 
            posts
        GROUP BY 
            DATE_FORMAT(created_at, '%Y-%m-%d')
        ORDER BY 
            date ASC
        LIMIT 30
    ");
    
    return $stmt->fetchAll();
}

/**
 * Get top 10 users by post count
 */
function getTopUsersByPosts($conn) {
    $stmt = $conn->query("
        SELECT 
            u.name,
            COUNT(p.id) as post_count
        FROM 
            users u
        LEFT JOIN 
            posts p ON u.id = p.user_id
        GROUP BY 
            u.id, u.name
        ORDER BY 
            post_count DESC
        LIMIT 10
    ");
    
    return $stmt->fetchAll();
}

/**
 * Get top 10 users by total engagement (reacts + comments + shares)
 */
function getTopUsersByEngagement($conn) {
    $stmt = $conn->query("
        SELECT 
            u.name,
            (
                COUNT(DISTINCT r.id) + 
                COUNT(DISTINCT c.id) + 
                COUNT(DISTINCT s.id)
            ) as total_engagement
        FROM 
            users u
        LEFT JOIN 
            posts p ON u.id = p.user_id
        LEFT JOIN 
            reacts r ON p.id = r.post_id
        LEFT JOIN 
            comments c ON p.id = c.post_id
        LEFT JOIN 
            shares s ON p.id = s.post_id
        GROUP BY 
            u.id, u.name
        ORDER BY 
            total_engagement DESC
        LIMIT 10
    ");
    
    return $stmt->fetchAll();
}

/**
 * Get complete user engagement metrics for all users
 */
function getUserEngagementMetrics($conn) {
    $stmt = $conn->query("
        SELECT 
            u.id,
            u.name,
            COUNT(DISTINCT p.id) as posts,
            COUNT(DISTINCT r.id) as reactions,
            COUNT(DISTINCT c.id) as comments,
            COUNT(DISTINCT s.id) as shares
        FROM 
            users u
        LEFT JOIN 
            posts p ON u.id = p.user_id
        LEFT JOIN 
            reacts r ON p.id = r.post_id
        LEFT JOIN 
            comments c ON p.id = c.post_id
        LEFT JOIN 
            shares s ON p.id = s.post_id
        GROUP BY 
            u.id, u.name
        ORDER BY 
            (COUNT(DISTINCT r.id) + COUNT(DISTINCT c.id) + COUNT(DISTINCT s.id)) DESC
    ");
    
    return $stmt->fetchAll();
}

/**
 * Get posts over time data for API
 */
function getPostsOverTimeData($conn) {
    $data = getPostsOverTime($conn);
    $dates = [];
    $counts = [];
    
    foreach ($data as $row) {
        $dates[] = $row['date'];
        $counts[] = (int)$row['count'];
    }
    
    return [
        'labels' => $dates,
        'data' => $counts
    ];
}

/**
 * Get top users by posts data for API
 */
function getTopUsersByPostsData($conn) {
    $data = getTopUsersByPosts($conn);
    $users = [];
    $counts = [];
    
    foreach ($data as $row) {
        $users[] = $row['name'];
        $counts[] = (int)$row['post_count'];
    }
    
    return [
        'labels' => $users,
        'data' => $counts
    ];
}

/**
 * Get top users by engagement data for API
 */
function getTopUsersByEngagementData($conn) {
    $data = getTopUsersByEngagement($conn);
    $users = [];
    $counts = [];
    
    foreach ($data as $row) {
        $users[] = $row['name'];
        $counts[] = (int)$row['total_engagement'];
    }
    
    return [
        'labels' => $users,
        'data' => $counts
    ];
}