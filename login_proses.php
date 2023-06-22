<?php
session_start();
include 'koneksi.php';

if (isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
    $result = $connect->query($sql);

    if ($result->num_rows > 0) {
        $_SESSION['email'] = $email;

        header("Location: index.php");
        exit();
    } else {
        echo "<h1>Login gagal. Silakan cek kembali email dan password Anda.</h1>";
    }
} else {
    echo "<h1>Data yang diperlukan tidak tersedia</h1>";
}
?>