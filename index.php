<?php
session_start();

if (!isset($_SESSION['email'])) {
    header("Location: login.php");
    exit();
}

include 'koneksi.php';
$title = 'Home';
ob_start();
?>

<div>
    <div class="row">
        <div class="col">
            <h1 class="font-weight-bold">Data pengguna</h1>
            <a class="btn btn-primary" href="tambah.php">Tambah pengguna</a>
        </div>
        <div class="col">
            <h4 class="font-weight-bold">Halo,
                <?= $_SESSION['email'] ?>
            </h4>
            <a class="btn btn-danger" href="logout.php">Logout</a>
        </div>
    </div>

    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Aksi</th>
                <th scope="col">Avatar</th>
                <th scope="col">Nama</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">Role</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            $datas = $connect->query("SELECT * FROM users")->fetch_all(MYSQLI_ASSOC);
            foreach ($datas as $d):
                ?>
                <tr>
                    <td scope="row">
                        <?= $no++ ?>
                    </td>
                    <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <a href="detail.php?id=<?= $d['id'] ?>" class="btn btn-primary">Detail</a>
                            <a href="ubah.php?id=<?= $d['id'] ?>" class="btn btn-warning">Edit</a>
                            <a href="crud/delete.php?id=<?= $d['id'] ?>" class="btn btn-danger">Hapus</a>
                        </div>
                    </td>
                    <td>
                        <img class="rounded-circle" style="height: 50px; width: 50px"
                            src="storage/avatar/<?= $d['avatar'] ?>" alt="Avatar">
                    </td>
                    <td>
                        <?= $d['name'] ?>
                    </td>
                    <td>
                        <?= $d['email'] ?>
                    </td>
                    <td>
                        <?= $d['phone'] ?>
                    </td>
                    <td>
                        <?= $d['role'] ?>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>

<?php
$body = ob_get_clean();
include 'root_template.php';
?>