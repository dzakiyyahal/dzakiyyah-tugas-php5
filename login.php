<?php
include 'koneksi.php';
session_start();

if (isset($_SESSION['email'])) {
    header("Location: index.php");
    exit();
}
$title = 'Home';
ob_start();
?>

<div>
    <h1 class="font-weight-bold">Login</h1>

    <form action="login_proses.php" method="POST">
        <div class="form-group">
            <label>Email</label>
            <input name="email" type="text" placeholder="Email" class="form-control">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input name="password" type="password" placeholder="Password" class="form-control-file">
        </div>

        <input type="submit" class="btn btn-primary" value="Submit">
    </form>
</div>

<?php
$body = ob_get_clean();
include 'root_template.php';
?>