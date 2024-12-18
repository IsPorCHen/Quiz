<?php
session_start();
include 'includes/db_connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT); // Хэширование пароля

    // Проверка, существует ли уже пользователь с таким email
    $query = "SELECT * FROM users WHERE email = '$email'";
    $result = mysqli_query($conn, $query);
    
    if (mysqli_num_rows($result) > 0) {
        echo "Пользователь с таким email уже существует!";
    } else {
        // Добавление нового пользователя
        $query = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')";
        if (mysqli_query($conn, $query)) {
            echo "Регистрация прошла успешно!";
            header("Location: login.php"); // Перенаправление на страницу входа
        } else {
            echo "Ошибка регистрации!";
        }
    }
}
?>

<form method="POST">
    <label for="username">Имя пользователя:</label>
    <input type="text" name="username" id="username" required><br>

    <label for="email">Email:</label>
    <input type="email" name="email" id="email" required><br>

    <label for="password">Пароль:</label>
    <input type="password" name="password" id="password" required><br>

    <button type="submit">Зарегистрироваться</button>
</form>
