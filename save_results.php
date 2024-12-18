<?php
session_start();
include 'includes/db_connect.php';

// Проверка, что пользователь авторизован
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

// Получение результатов викторины (например, из формы или через POST-запрос)
$quiz_id = $_POST['quiz_id'];
$score = $_POST['score']; // Здесь $score может быть вычислен на основе правильных ответов

$user_id = $_SESSION['user_id'];

// Сохранение результата в базе данных
$query = "INSERT INTO results (user_id, quiz_id, score) VALUES ('$user_id', '$quiz_id', '$score')";
if (mysqli_query($conn, $query)) {
    echo "Результаты сохранены!";
} else {
    echo "Ошибка при сохранении результатов.";
}
?>
