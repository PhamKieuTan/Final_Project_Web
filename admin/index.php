<?php 
	session_start();
	include_once ('./lib/DataProvider.php'); 
	include_once ('./lib/thegioilinhkiendientu.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title></title>
</head>
<body>
    <div class="header">
        <div class="header-left">
            <h1> Admin Shop</h1>
        </div>
        <div class="header-right">
            <ul class="menu-admin">
                <li class="icon-right" id="menu-shop">
                    <a href="index.php?a=1"><span><img src="../icon/Home.png" alt=""></span>Trang Chủ</a>
                </li>
                <li class="icon-right" id="menu-shop">
                    <a href="index.php?a=2"><span><img src="../icon/newspaper.png" alt=""></span>Hãng Sản Xuất </a>
                </li>
                <li class="icon-right" id="menu-shop">
                    <a href="index.php?a=3"><span><img src="../icon/newspaper.png" alt=""></span>Loại Sản Phẩm</a>
                </li>
                <li class="icon-right" id="menu-shop">
                    <a href="index.php?a=4"><span><img src="../icon/newspaper.png" alt=""></span>Sản Phẩm</a>
                </li>
                <li class="icon-right" id="menu-shop">
                    <a href="index.php?a=5"><span><img src="../icon/newspaper.png" alt=""></span>Đơn Đặt Hàng</a>
                </li>
                <li class="icon-right" id="menu-shop">
                    <a href="index.php?a=6"><span><img src="../icon/user1.png" alt=""></span>Khách Hàng</a>
                </li>           
            </ul>
        </div>
    </div>
    <div class="wrapper">
        <div class="content">
            <?php
                include ('mContent.php');
            ?>
        </div>
        <div class="footer">
            <div class"footer-bottom">
                <hr boder="2">
                <p class="copyright">All Rights Reserved.Design by Student University of Science @2017.</p> 
            </div>
        </div>
    </div>
</body>
</html>