<?php
session_start();
include 'includes/db_connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!isset($_POST['quiz_id'])) {
        echo "Ошибка: не указан ID викторины!";
        exit;
    }

    $quiz_id = $_POST['quiz_id'];
    $correct_answers = 0;
    $total_questions = 0;

    $questions_query = "SELECT * FROM questions WHERE quiz_id = $quiz_id";
    $questions_result = mysqli_query($conn, $questions_query);

    if (!$questions_result) {
        echo "Ошибка при получении вопросов: " . mysqli_error($conn);
        exit;
    }

    while ($row = mysqli_fetch_assoc($questions_result)) {
        $total_questions++;

        $correct_answer_query = "SELECT * FROM answers WHERE question_id = {$row['id']} AND is_correct = 1";
        $correct_answer_result = mysqli_query($conn, $correct_answer_query);

        if (!$correct_answer_result) {
            echo "Ошибка при получении правильного ответа: " . mysqli_error($conn);
            exit;
        }

        $correct_answer = mysqli_fetch_assoc($correct_answer_result);

        if (isset($_POST['question_' . $row['id']]) && $_POST['question_' . $row['id']] == $correct_answer['id']) {
            $correct_answers++;
        }
    }

    $score = ($correct_answers / $total_questions) * 100;

    echo "<h2>Результаты викторины: $quiz_id</h2>";
    echo "<p>Правильных ответов: $correct_answers из $total_questions</p>";
    echo "<p>Ваша оценка: $score%</p>";
}
?>
