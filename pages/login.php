<?php


?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="form.css">
</head>

<body>
  <div class="container">
    <div class="card">
      <h2>Login</h2>
      <form>
        <input type="text" id="username" name="username" placeholder="Username" required>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
      </form>
    </div>
  </div>

  <?php

  $con = new mysqli("localhost", "root", "", "attedance");



  if (isset($_POST['submit'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];

    $check_username;


    $user = mysqli_query($con, "SELECT username, password FROM login WHERE username = '$username' AND password = '$password'");

    while ($row = mysqli_fetch_array($user)) {

      $check_username = $row['username'];
      $check_password = $row['password'];
    }
    $check_username;
    if ($username == $check_username && $password == $check_password) {
      session_start();
      $_SESSION['logged_in'] = true;



      // echo "<script type='text/javascript'>alert('$message');</script>";
      header("Location:  ./student.php");
    } else {

      echo "<script type='text/javascript'>alert('$message');</script>";
    }
  }

  ?>
</body>

</html>