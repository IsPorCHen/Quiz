<?php
    session_start();
    include 'includes/db_connect.php';

    if (!isset($_SESSION['user_id'])) {
        header('Location: login.php');
        exit;
    }

    $quiz_id = $_GET['id'];
    $user_id = $_SESSION['user_id'];

    $query = "SELECT * FROM results WHERE quiz_id = $quiz_id AND user_id = $user_id";
    $result = mysqli_query($conn, $query);
    $result_row = mysqli_fetch_assoc($result);

    if ($result_row) {
        echo "<p>Вы набрали " . $result_row['score'] . " баллов.</p>";
    } else {
        echo "<p>Вы не прошли этот тест.</p>";
    }
?>
