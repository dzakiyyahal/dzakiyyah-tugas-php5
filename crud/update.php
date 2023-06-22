<?php
include '../koneksi.php';

if (isset($_POST) && isset($_GET['id'])) {
    $id = $_GET['id'];
    $name = $_POST['name'];
    $role = $_POST['role'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $avatar = $_FILES['avatar']['name'];
    $avatar_tmp = $_FILES['avatar']['tmp_name'];

    $targetDirectory = '../storage/avatar/';
    $targetFile = $targetDirectory . $avatar;

    $query = "UPDATE users SET name='$name', role='$role', password='$password', email='$email', phone='$phone', address='$address', avatar='$avatar' WHERE id=$id";
    $result = $connect->query($query);

    if ($result) {
        if (move_uploaded_file($avatar_tmp, $targetFile)) {
            header("Location: ../index.php");
            exit();
        } else {
            echo "Terjadi kesalahan saat memindahkan file";
        }
    } else {
        echo "Terjadi kesalahan saat mengupdate data";
    }
} else {
    echo "<h1>Data yang diperlukan tidak tersedia</h1>";
}
?>