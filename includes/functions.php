<?php
    function getUserInfo($user_id) {
        global $conn;
        $query = "SELECT * FROM users WHERE id = $user_id";
        $result = mysqli_query($conn, $query);
        return mysqli_fetch_assoc($result);
    }
?>
