<?php
    $conn = mysqli_connect('localhost', 'root', '', 'quiz_app');
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>