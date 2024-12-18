<?php
session_start();
include 'includes/db_connect.php';

// Проверка, что пользователь авторизован
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

$user_id = $_SESSION['user_id'];

// Получение всех результатов пользователя
$query = "SELECT quizzes.title, results.score, results.created_at FROM results 
          JOIN quizzes ON results.quiz_id = quizzes.id
          WHERE results.user_id = '$user_id' ORDER BY results.created_at DESC";
$result = mysqli_query($conn, $query);

echo "<h2>Ваши результаты:</h2>";
while ($row = mysqli_fetch_assoc($result)) {
    echo "<p>Викторина: " . $row['title'] . "<br>";
    echo "Результат: " . $row['score'] . "<br>";
    echo "Дата прохождения: " . $row['created_at'] . "</p>";
}
?>
