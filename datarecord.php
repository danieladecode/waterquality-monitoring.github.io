<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website Monitoring IoT</title>
    <!-- MATERIAL ICONS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- STYLE ICONS -->
    <link rel="stylesheet" href="./style.css">
    <link rel="icon" type="image/jpg" href="image/favicon.png">
    <!-- <link rel="stylesheet" href="./main.js"> -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <?php
    //menambahkan file koneksi yang telah dibuat sebelumnya
    include "koneksi.php";
    //mengakses tabel penyimpanan data sensor di database
    $query = mysqli_query($koneksi, "SELECT * FROM `data_iot`");
    ?>
    <nav>
        <div class="container">
            <button id="menu-btn">
            <span class="material-icons-sharp" style="color: white">menu</span>
            </button>
            <h3 class="judul">INTERNET of THINGS  |  SISTEM MONITORING KUALITAS AIR WTP PT. X</h3>
            <div class="profile-area">
                <div class="profile">
                    <span class="material-icons-sharp">account_circle</span>
                    <h5>Hi Daniel Ade, Welcome Back! </h5>
                </div>
                <div class="theme-btn">
                    <span class="material-icons-sharp active">light_mode</span>
                    <span class="material-icons-sharp">dark_mode</span>
                </div>
            </div>
        </div>
    </nav>
    <!-- END OF NAV -->
    <main>
        <aside>
            <button id="close-btn">
            <span class="material-icons-sharp">close</span>
            </button>
            <div class="sidebar" style="height: 100vh;">
                <a href="index.php">
                    <span class="material-icons-sharp">dashboard</span>
                    <h4>Dashboard</h4>
                </a>
                <a href="menuchart.php">
                    <span class="material-icons-sharp">show_chart</span>
                    <h4>Menu Chart</h4>
                </a>
                <a href="datarecord.php" class="active">
                    <span class="material-icons-sharp">dvr</span>
                    <h4>Data Record</h4>
                </a>
                <a href="#">
                    <span class="material-icons-sharp">settings</span>
                    <h4>Settings</h4>
                </a>
                <div class="updates">
                    <span class="material-icons-sharp">downloading</span>
                    <h4>EXPORT TO EXCEL</h4>
                    <small>Click Export Data untuk download dalam bentuk excel</small>
                    <a href="export_excel.php" style="background-color: green">Export Data</a>
                </div>
            </div>
        </aside>
        <!-- END OF SIDEBAR -->
        <section class="middle">
            <div class="header">
                <h1>DATA RECORD</h1>
            </div>
            <div class="data_record">
                <form action="post">
                    <table border="3" cellpadding="4" cellspacing="2" align="center">
                        <tr>
                            <th style="padding: 2rem; text-align: center;">NO</th>
                            <th style="padding: 2rem; text-align: center;">TANGGAL</th>
                            <th style="padding: 2rem; text-align: center;">JAM</th>
                            <th style="padding: 2rem; text-align: center;">pH AIR</th>
                            <th style="padding: 2rem; text-align: center;">TDS AIR ppm</th>
                            <th style="padding: 2rem; text-align: center;">SUHU AIR &deg;C</th>
                            <th style="padding: 2rem; text-align: center;">NILAI KEKERUHAN AIR</th>
                            <th style="padding: 2rem; text-align: center;">STATUS KEKERUHAN AIR</th>
                        </tr>
                        <?php if (mysqli_num_rows($query) > 0) { ?>
                        <?php
                        $no = 1;
                        while ($data = mysqli_fetch_array($query)) {
                        ?>
                            <tr>
                                <td align="center"><?php echo $no ?></td>
                                <td align="center"><?php echo $data["tgl"]; ?></td>
                                <td align="center"><?php echo $data["jam"]; ?></td>
                                <td align="center"><?php echo $data["ph"]; ?></td>
                                <td align="center"><?php echo $data["tds"]; ?></td>
                                <td align="center"><?php echo $data["suhu"]; ?></td>
                                <td align="center"><?php echo $data["turbidity"]; ?></td>
                                <td align="center"><?php $turbidity = $data["turbidity"];
                        if($turbidity < 30){
                        echo "AIR KOTOR";
                        }else if ($turbidity > 100){
                        echo "AIR BERSIH";
                        }else{
                        echo "AIR KERUH";
                        }
                        ?></td>
                            </tr>
                            <?php $no++;
                        } ?>
                    <?php } ?>
        </section>
        <!-- END OF MIDDLE -->
        <section class="right">

        </section>
        <!-- END OF RIGHT -->
    </main>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
    <script src="main.js"></script>
</body>
</html>