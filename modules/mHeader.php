<div id="header">
    <a href="index.php">
        <img src="img/logo.gif" width="519" height="63">
    </a>
    <div id="login_nav">
        <?php
            if(isset($_SESSION['maTaiKhoan']))
            {
                include ("modules/mThongTinTaiKhoan.php");
            }
            else
            {
                include ("modules/mDangNhapTaiKhoan.php");
            }
        ?>
        
    </div>
    <img src="img/header_1.png" width="748">
    <img src="img/header_2.png" width="748">
</div>