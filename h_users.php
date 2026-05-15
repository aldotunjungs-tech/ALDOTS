<?php
session_start();
include "koneksi.php";

// Cek apakah user sudah login
if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}
?>
<?php
include "koneksi.php";

$id = $_GET['id'];

// fungsi menu manajemen user
$hapus = mysqli_query($conn, "DELETE FROM users WHERE id='$id'");

if ($hapus) {
    echo "<script>alert('User berhasil dihapus!'); window.location='users.php';</script>";
} else {
    echo "<script>alert('User gagal dihapus!'); window.location='users.php';</script>";
}
?>