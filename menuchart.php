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
    <link rel="stylesheet" href="./main.js">
    <link rel="icon" type="image/jpg" href="image/favicon.png">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <nav>
        <div class="container">
            <button id="menu-btn">
            <span class="material-icons-sharp" style="color: white;">menu</span>
            </button>
            <h3 class="judul">INTERNET of THINGS | SISTEM MONITORING KUALITAS AIR WTP PT. X</h3>
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
            <div class="sidebar">
                <a href="index.php">
                    <span class="material-icons-sharp">dashboard</span>
                    <h4>Dashboard</h4>
                </a>
                <a href="menuchart.php" class="active">
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
                <div class="updates">
                    <span class="material-icons-sharp">downloading</span>
                    <h4>EXPORT TO EXCEL</h4>
                    <small>Click Export Data untuk download semua data dalam bentuk excel</small>
                    <a href="export_excel.php" style="background-color: green">Export All</a>
                </div>
            </div>
            <!-- <div class="updates">
                <span class="material-icons-sharp">update</span>
                <h4>UPDATE DATA</h4>
                <small>Click Update Untuk Menampilkan Data Terbaru</small>
                <a href="#">Update Now</a>
            </div> -->
        </aside>
        <!-- END OF SIDEBAR -->
        <section class="middle">
            <div class="header">
                <h1 style="margin-bottom:2rem">MENU CHART</h1>
            </div>
                <div class="export">
                <a href="export_ph.php" style="background-color: green; padding: 1rem; color:white; margin-top:1rem; border-radius:1rem; box-shadow: 0 0.8rem 0.8rem rgba(0, 0, 0, 0.1)">Export Data pH</a>
            </div>
            <div style="width: 950px; background-color: white; padding-bottom: 5rem;">
                <canvas id="pHChart"></canvas>
            </div>
                <div class="export">
                <a href="export_tds.php" style="background-color: green; padding: 1rem; color:white; margin-top:1rem; border-radius:1rem; box-shadow: 0 0.8rem 0.8rem rgba(0, 0, 0, 0.1)">Export Data TDS</a>
            </div>
            <div style="width: 950px; background-color: white; padding-bottom: 5rem;">
                <canvas id="tdsChart"></canvas>
            </div>
                <div class="export">
                <a href="export_suhu.php" style="background-color: green; padding: 1rem; color:white; margin-top:1rem; border-radius:1rem; box-shadow: 0 0.8rem 0.8rem rgba(0, 0, 0, 0.1)">Export Data Suhu</a>
            </div>
            <div style="width: 950px; background-color: white; padding-bottom: 5rem;">
                <canvas id="suhuChart"></canvas>
            </div>
                <div class="export">
                <a href="export_turbidity.php" style="background-color: green; padding: 1rem; color:white; border-radius:1rem; box-shadow: 0 0.8rem 0.8rem rgba(0, 0, 0, 0.1)">Export Data Kekeruhan</a>
            </div>
            <div style="width: 950px; background-color: white; padding-bottom: 5rem;">
                <canvas id="turbidityChart"></canvas>
            </div>
        </section>
    </main>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
    <script src="main.js"></script>
</body>
</html>

<?php
    //menambahkan file koneksi yang telah dibuat sebelumnya
    include "koneksi.php";
    //mengakses tabel penyimpanan data sensor di database
    $query = mysqli_query($koneksi, "SELECT * FROM `data_iot`");
    $phData = array();
    $tdsData = array();
    $suhuData = array();
    $turbidityData = array();
    $labels = array();

    if (mysqli_num_rows($query) > 0) {
        while ($data = mysqli_fetch_array($query)) {
            array_push($phData, $data["ph"]);
            array_push($tdsData, $data["tds"]);
            array_push($suhuData, $data["suhu"]);
            array_push($turbidityData, $data["turbidity"]);
            array_push($labels, $data["tgl"] . ' ' . $data["jam"]);
        }
    }

    $phDataJson = json_encode($phData);
    $tdsDataJson = json_encode($tdsData);
    $suhuDataJson = json_encode($suhuData);
    $turbidityDataJson = json_encode($turbidityData);
    $labelsJson = json_encode($labels);

    ?>
<script>
    window.addEventListener('load', function() {
        var ctxPh = document.getElementById('pHChart').getContext('2d');
        var ctxTds = document.getElementById('tdsChart').getContext('2d');
        var ctxSuhu = document.getElementById('suhuChart').getContext('2d');
        var ctxTurbidity = document.getElementById('turbidityChart').getContext('2d');

        var phData = <?php echo $phDataJson; ?>;
        var tdsData = <?php echo $tdsDataJson; ?>;
        var suhuData = <?php echo $suhuDataJson; ?>;
        var turbidityData = <?php echo $turbidityDataJson; ?>;
        var labels = <?php echo $labelsJson; ?>;

        var pHChart = new Chart(ctxPh, {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: 'PH AIR',
                    data: phData,
                    borderColor: 'aqua',
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        var tdsChart = new Chart(ctxTds, {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: 'TDS AIR',
                    data: tdsData,
                    borderColor: 'green',
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        var suhuChart = new Chart(ctxSuhu, {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: 'SUHU AIR',
                    data: suhuData,
                    borderColor: 'orange',
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        var turbidityChart = new Chart(ctxTurbidity, {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: 'KEKERUHAN AIR',
                    data: turbidityData,
                    borderColor: 'gray',
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    });
</script>