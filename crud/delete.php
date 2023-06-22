<?php
include '../koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "DELETE FROM users WHERE id = $id";
    if ($connect->query($sql) === true) {
        header("Location: ../index.php");
        exit();
    } else {
        echo "<h1>Gagal menghapus data user</h1>";
    }
} else {
    echo "<h1>Data yang diperlukan tidak tersedia</h1>";
}
?>