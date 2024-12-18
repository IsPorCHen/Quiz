<?php
    include 'includes/db_connect.php'; // Подключаем базу данных
    include 'templates/header.php';     // Подключаем header

    // Получаем список викторин
    $query = "SELECT * FROM quizzes";
    $result = mysqli_query($conn, $query);
?>

<h1>Доступные викторины</h1>

<ul>
    <?php
        if (mysqli_num_rows($result) > 0) {
            // Выводим список викторин
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<li><a href='quiz.php?id=" . $row['id'] . "'>" . $row['title'] . "</a></li>";
            }
        } else {
            echo "<p>Викторины не найдены.</p>";
        }
    ?>
</ul>

<?php
    include 'templates/footer.php';    // Подключаем footer
?>
