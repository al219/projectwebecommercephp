<?php
    require "session.php";
    require "../koneksi.php";

    $id = $_GET['id'];

    $query = mysqli_query($con, "SELECT * FROM transaksi WHERE id = $id");
    $data = mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/min.css">
</head>
<body>
    <?php require "navbar.php"; ?>

    <div class="container mt-5 flex flex-col align-items-center"></div>
</body>
</html>