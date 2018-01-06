<?php 
	session_start();
	if(isset($_GET["a"]) && $_GET["a"] != 0 && $_GET["a"] > 10)
		$_SESSION["curURL"] = $_SERVER["REQUEST_URI"];	
	include_once ('lib/DataProvider.php'); 
	include_once ('lib/thegioilinhkiendientu.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link REL="SHORTCUT ICON" HREF="./icon/favicon.ico">
    <title>Thế Giới Linh Kiện Điện Tử</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <!-- <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-awesome.css"> -->
    <script type="text/javascript" src="./js/jquery-3.2.1.min.js" ></script>
</head>

<body>
    <header class="header">
        <?php include ('./modules/mHeader.php');?>
    </header>
    <div class="wrapper">
        <div class="menu">
            <?php include ('./modules/mMenuShop.php');?>
        </div>
        <div class="content">
            <div class="top-content">
                <div class="slider-content">
                    <?php include ('./templates/slider-content.php');?>
                </div>
            </div>
            <?php include_once ('modules/mContent.php');?>   
        </div>
        <div class="bottom-slider-content">
             <!-- include thư viện slider-hang -->
             <?php include ("templates/slider-hang.php"); ?>  
        </div>
        <div class="footer">     
            <?php include ('./modules/mFooter.php');?>
        </div>
    </div>
</body>

</html>