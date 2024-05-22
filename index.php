<?php
session_start();

// Periksa apakah pengguna sudah login, jika belum arahkan ke halaman login
if (!isset($_SESSION['is_login'])) {
    header("Location: login.php");
    exit;
}
?>

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
    $query = mysqli_query($koneksi, "SELECT * FROM `data_iot` ORDER BY id DESC LIMIT 1");
    ?>
            <?php if (mysqli_num_rows($query) > 0) { ?>
                <?php
                $no = 1;
                while ($data = mysqli_fetch_array($query)) {
                ?>
    <nav>
        <div class="container">
            <button id="menu-btn">
            <span class="material-icons-sharp" style="color: white;">menu</span>
            </button>
            <h3 class="judul">INTERNET of THINGS  |  SISTEM MONITORING KUALITAS AIR WTP PT. X</h3>
            <div class="search-bar">
                <h4><?php echo $data["tgl"], " | " , $data["jam"]; ?></h4>
            </div>
            <div class="profile-area">
                <div class="profile">
                    <span class="material-icons-sharp">account_circle</span>
                    <h5>Hi Daniel, Welcome Back! </h5>
                </div>
                <div class="theme-btn">
                    <span class="material-icons-sharp active">light_mode</span>
                    <span class="material-icons-sharp">dark_mode</span>
                </div>
                <div class="profile">
                    <a href="logout.php" class="active">
                        <span class="material-icons-sharp" style="color: white">logout</span>
                    </a>
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
            <div class="sidebar">
                <a href="index.php" class="active">
                    <span class="material-icons-sharp">dashboard</span>
                    <h4>Dashboard</h4>
                </a>
                <a href="menuchart.php">
                    <span class="material-icons-sharp">show_chart</span>
                    <h4>Menu Chart</h4>
                </a>
                <a href="datarecord.php">
                    <span class="material-icons-sharp">dvr</span>
                    <h4>Data Record</h4>
                </a>
                <a href="#">
                    <span class="material-icons-sharp">settings</span>
                    <h4>Settings</h4>
                </a>
            </div>
            <div class="updates">
                <span class="material-icons-sharp">update</span>
                <h4>UPDATE DATA</h4>
                <small>Click Update Untuk Menampilkan Data Terbaru</small>
                <a href="#" onclick="refreshPage()">Update Now</a>
            </div>
        </aside>
        <!-- END OF SIDEBAR -->
        <section class="middle">
            <div class="header">
                <h1>DASHBOARD</h1>
            </div>
            <div class="cards">
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <!--<span class="material-icons-sharp">opacity</span>-->
                            <img src="./image/tds2.png" alt="">
                            <h2>TDS AIR</h2>
                        </div>
                        <img src="" alt="" class="right">
                    </div>
                    <div class="middle">
                        <h1><?php echo $data["tds"]; ?> ppm</h1>
                    </div>
                    <!-- <div class="bottom">
                        <div class="right">
                            <small>Last 24 hours</small>
                        </div>
                    </div> -->
                </div>
                <!-- END OF CARD 2 -->
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <!--<span class="material-icons-sharp">water_drop</span>-->
                            <img src="./image/ph2.png" alt="">
                            <h2>pH AIR</h2>
                        </div>
                        <img src="" alt="" class="right">
                    </div>
                    <div class="middle">
                        <h1><?php echo $data["ph"]; ?></h1>
                    </div>
                    <!-- <div class="bottom">
                        <div class="right">
                            <small>Last 24 hours</small>
                        </div>
                    </div> -->
                </div>
                <!-- END OF CARD 1 -->
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <!--<span class="material-icons-sharp">thermostat</span>-->
                            <img src="./image/temp.png" alt="">
                            <h2>SUHU AIR</h2>
                        </div>
                        <img src="" alt="" class="right">
                    </div>
                    <div class="middle">
                        <h1><?php echo $data["suhu"]; ?> &deg;C</h1>
                    </div>
                    <!-- <div class="bottom">
                        <div class="right">
                            <small>Last 24 hours</small>
                        </div>
                    </div> -->
                </div>
                <!-- END OF CARD 3 -->
                <!-- END OF CARD 4 -->
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <!--<span class="material-icons-sharp">invert_colors</span>-->
                            <img src="./image/img_turbd.png" alt="">
                            <p style="font-size: 22px; color: white; margin-left: 0.5rem;"><b>NILAI KEKERUHAN AIR</b></p>
                        </div>
                        <img src="" alt="" class="right">
                    </div>
                    <div class="middle">
                        <h1><?php echo $data["turbidity"]; ?></h1>
                    </div>
                    <!-- <div class="bottom">
                        <div class="right">
                            <small>Last 24 hours</small>
                        </div>
                    </div> -->
                </div>
                <!-- END OF CARD 5 -->
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <!--<span class="material-icons-sharp">local_drink</span>-->
                            <img src="./image/img_turbd.png" alt="">
                            <p style="font-size: 22px; color: white; margin-left: 0.5rem;"><b>STATUS KEKERUHAN AIR</b></p>
                        </div>
                        <img src="" alt="" class="right">
                    </div>
                    <div class="middle">
                        <h1><?php 
                        $turbidity = $data["turbidity"];
                        if($turbidity < 30){
                        echo "AIR KOTOR";
                        }else if ($turbidity > 100){
                        echo "AIR BERSIH";
                        }else{
                        echo "AIR KERUH";
                        }
                        ?></h1>
                    </div>
                    <!-- <div class="bottom">
                        <div class="right">
                            <small>Last 24 hours</small>
                        </div>
                    </div> -->
                </div>
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <!--<span class="material-icons-sharp">bloodtype</span>-->
                            <img src="./image/status_asambasa.png" alt="">
                            <p style="font-size: 22px; color: white; margin-left: 0.5rem;"><b>STATUS ASAMBASA AIR</b></p>
                        </div>
                        <img src="" alt="" class="right">
                    </div>
                    <div class="middle">
                        <h1><?php 
                        $ph = $data["ph"];
                        if($ph < 6.5){
                        echo "ASAM";
                        }else if ($ph > 8.5){
                        echo "BASA";
                        }else{
                        echo "NETRAL";
                        }
                        ?></h1>
                    </div>
                    <!-- <div class="bottom">
                        <div class="right">
                            <small>Last 24 hours</small>
                        </div>
                    </div> -->
                </div>
            </div>
            <!-- END OF CARDS -->
            <?php $no++;
                        } ?>
                    <?php } ?>
        <!-- <div style="width: 950px; background-color: white; padding: 1rem;">
            <canvas id="myChart"></canvas>
        </div> -->
        </section>
        <!-- END OF MIDDLE -->
        <section class="right">

        </section>
        <!-- END OF RIGHT -->
    </main>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
    <script>
        function refreshPage(){
            location.reload();
        }
    </script>
    <script src="main.js"></script>
</body>
</html>