<?php
    require "../koneksi.php";
    
    $queryOrder = mysqli_query($con, "SELECT * FROM transaksi");
    $jumlahOrder = mysqli_num_rows($queryOrder);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../fontawesome/css/fontawesome.min.css">
</head>
<body>
    <?php require "navbar.php" ?>

    <div class="container">
        <h1 class="text-center">Order</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>alamat</th>
                    <th>Tanggal</th>
                    <th>Order</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($jumlahOrder == 0) {
                    ?>
                        <tr>
                            <td colspan="3">Tidak ada order</td>
                        </tr>
                    <?php
                } else {
                    $no = 0;
                    while ($data = mysqli_fetch_array($queryOrder)) {
                        $no++;
                ?>
                        <tr>
                            <td><?php echo $no; ?></td>
                            <td><?php echo $data['nama']; ?></td>
                            <td><?php echo $data['alamat']; ?></td>
                            <td><?php echo $data['tanggal']; ?></td>
                            <td><?php echo $data['cart']; ?></td>
                            <td>
                                <a href="order-detail.php?id=<?php echo $data['id']; ?>" class="btn btn-info">
                                <i class="fas fa-search"></i>
                            </a>
                            </td>
                        </tr>
                <?php
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>