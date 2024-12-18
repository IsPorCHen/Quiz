<?php
session_start();
include 'includes/db_connect.php';

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

$quiz_id = $_POST['quiz_id'];
$score = $_POST['score'];

$user_id = $_SESSION['user_id'];

$query = "INSERT INTO results (user_id, quiz_id, score) VALUES ('$user_id', '$quiz_id', '$score')";
if (mysqli_query($conn, $query)) {
    echo "Результаты сохранены!";
} else {
    echo "Ошибка при сохранении результатов.";
}
?>
