<?php
// Set headers for JSON response
header('Content-Type: application/json');

// Database credentials
$host = 'localhost';
$dbname = 'fbdb';
$username = 'root';
$password = '';

try {
    // Create PDO connection
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    
    // Set error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // UPDATED SQL query to count:
    // 1. Posts created BY the user
    // 2. Likes received ON the user's posts
    // 3. Comments received ON the user's posts
    // 4. Times the user's posts were shared
    $sql = "
    SELECT 
        u.name AS username,
        COUNT(DISTINCT p.id) AS posts,
        (SELECT COUNT(*) FROM likes l JOIN posts p2 ON l.post_id = p2.id WHERE p2.user_id = u.id) AS likes,
        (SELECT COUNT(*) FROM comments c JOIN posts p3 ON c.post_id = p3.id WHERE p3.user_id = u.id) AS comments,
        (SELECT COUNT(*) FROM shares s JOIN posts p4 ON s.post_id = p4.id WHERE p4.user_id = u.id) AS shares
    FROM 
        users u 
    LEFT JOIN 
        posts p ON u.id = p.user_id 
    GROUP BY 
        u.id, u.name 
    ORDER BY 
        posts DESC
    ";
    
    // Execute the query
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    
    // Fetch all results as an associative array
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Convert all numeric values to integers
    foreach ($results as &$row) {
        $row['posts'] = (int)$row['posts'];
        $row['likes'] = (int)$row['likes'];
        $row['comments'] = (int)$row['comments'];
        $row['shares'] = (int)$row['shares'];
    }
    
    // Return the results as JSON
    echo json_encode(['data' => $results]);
    
} catch (PDOException $e) {
    // Handle database connection errors
    http_response_code(500);
    echo json_encode(["error" => "Database error: " . $e->getMessage()]);
    exit;
} catch (Exception $e) {
    // Handle other errors
    http_response_code(500);
    echo json_encode(["error" => "Server error: " . $e->getMessage()]);
    exit;
}
?>