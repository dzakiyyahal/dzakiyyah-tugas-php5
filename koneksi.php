<?php
$connect = new mysqli('localhost', 'root', '', 'dbsinauo');

if ($connect->connect_errno) {
    echo "Koneksi ke MySQL gagal: " . $connect->connect_error;
    exit();
}