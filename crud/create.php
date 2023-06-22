<?php
include '../koneksi.php';

if (isset($_POST)) {
    $name = $_POST['name'];
    $role = $_POST['role'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $avatar = $_FILES['avatar']['name'];

    $targetDirectory = '../storage/avatar/';
    $targetFile = $targetDirectory . $avatar;

    $query = "INSERT INTO users (name, role, password, email, phone, address, avatar) VALUES ('$name', '$role', '$password', '$email', '$phone', '$address', '$avatar')";
    $result = $connect->query($query);

    if ($result) {
        if (move_uploaded_file($_FILES['avatar']['tmp_name'], $targetFile)) {
            header("Location: ../index.php");
            exit();
        } else {
            echo "Terjadi kesalahan saat memindahkan file";
        }
    } else {
        echo "Terjadi kesalahan saat menyimpan data";
    }
} else {
    echo "<h1>Data yang diperlukan tidak tersedia</h1>";
}
?>