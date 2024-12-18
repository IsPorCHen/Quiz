<?php
include 'includes/db_connect.php';

// Получаем ID викторины из URL
$quiz_id = $_GET['id'];

// Запрос на получение информации о викторине, включая её название
$quiz_query = "SELECT * FROM quizzes WHERE id = $quiz_id";
$quiz_result = mysqli_query($conn, $quiz_query);

if ($quiz_result) {
    $quiz = mysqli_fetch_assoc($quiz_result);
    $quiz_title = $quiz['title']; // Название викторины
} else {
    echo "Ошибка при получении информации о викторине.";
    exit;
}

// Запрос на получение вопросов для этой викторины
$questions_query = "SELECT * FROM questions WHERE quiz_id = $quiz_id";
$questions_result = mysqli_query($conn, $questions_query);
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Викторина: <?= $quiz_title ?></title>
</head>
<body>
    <h1>Викторина: <?= $quiz_title ?></h1>
    <form method="POST" action="submit_quiz.php">
        <input type="hidden" name="quiz_id" value="<?= $quiz_id ?>"> <!-- Передаем ID викторины -->

        <?php while ($row = mysqli_fetch_assoc($questions_result)): ?>
            <fieldset>
                <legend><?= $row['question_text'] ?></legend>
                <?php
                    $question_id = $row['id'];
                    $answers_query = "SELECT * FROM answers WHERE question_id = $question_id";
                    $answers_result = mysqli_query($conn, $answers_query);
                    while ($answer = mysqli_fetch_assoc($answers_result)):
                ?>
                    <label>
                        <input type="radio" name="question_<?= $row['id'] ?>" value="<?= $answer['id'] ?>">
                        <?= $answer['answer_text'] ?>
                    </label><br>
                <?php endwhile; ?>
            </fieldset>
        <?php endwhile; ?>
        <button type="submit">Отправить</button>
    </form>
</body>
</html>
