<?php
    require_once("koneksi.php");
    session_start();
    $login_notif = "";

    if(isset($_SESSION['is_login'])){
        header("location: index.php");
    }

    if(isset($_POST['login'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $select_admin_query = "SELECT * FROM admin WHERE username='$username' AND password='$password' " ;
        $select_admin = $koneksi->query($select_admin_query);
        
        if($select_admin->num_rows > 0){
            $admin = $select_admin->fetch_assoc();

            $_SESSION['is_login'] = true;
            $_SESSION['username'] = $admin['username'];

            header("location: index.php");
            
        }else{
            $login_notif = "akun tidak ditemukan";
        }

    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- MATERIAL ICONS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style-login.css">
    <link rel="icon" type="image/jpg" href="image/favicon.png">
    <title>Login Form</title>
</head>
<body>
    <div class="wrapper">
        <h1>LOGIN</h1>
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
            <div class="input-box">
                <input type="text" name="username" placeholder="Username">
                <span class="material-icons-sharp">person</span>
            </div>
            <div class="input-box">
                <input type="password" name="password" placeholder="Password">
                <span class="material-icons-sharp">lock</span>
            </div>
            <div class="remember-forgot">
                <label for=""><input type="checkbox">Remember me</label>
                <a href="#">Forgot Password?</a>
            </div>
            <button type="submit" name="login" class="btn">Login</button>
            <div class="register-link">
                <p>Don't have an account? <a href="#">Register</a></p>
            </div>
            <i style="font-weight: 600"><?= $login_notif ?></i>
        </form>
    </div>
</body>
</html>