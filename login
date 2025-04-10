<?php
session_start();
if(isset($_SESSION['user'])){
    header("Location: dashboard.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Haroon SMM Panel - Login</title>
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
  <div class="login-box">
    <h2>Login</h2>
    <form action="login_process.php" method="POST">
      <div class="textbox">
        <input type="text" placeholder="Username" name="username" required>
      </div>
      <div class="textbox">
        <input type="password" placeholder="Password" name="password" required>
      </div>
      <div class="g-recaptcha" data-sitekey="YOUR_RECAPTCHA_SITE_KEY"></div>
      <input type="submit" class="btn" value="Login">
    </form>
  </div>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</body>
</html>
