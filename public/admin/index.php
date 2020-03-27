<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Dashboard</title>
</head>

<body>
    <h2>Dashboard Admin</h2>
    <br />

    <!-- cek apakah sudah login -->
    <?php
    session_start();
    if ($_SESSION['status'] != "login") {
        header("location:../login.php?pesan=belum_login");
    }
    ?>

    <h4>Selamat datang, <?php echo $_SESSION['nama']; ?>! Anda sudah login</h4>

    <!-- disini buat tampilan tabel -->

    <a href="logout.php">LOGOUT</a>
</body>

</html>