<?php
session_start();

// unset semua session variable
unset($_SESSION['username']);
unset($_SESSION['password']);

// unset all
session_unset();

// session destroy
session_destroy();

// redirect to login page
header('location: ../login.php?pesan=logout');
exit;
