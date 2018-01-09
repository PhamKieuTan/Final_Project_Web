<?php
    $a = (isset($_GET['a'])) ? $_GET['a'] : 7; 
    
    switch ($a) {
        case 1:
            include ("pLogOut.php");
            break;
        case 2: 
            include ("pHangSanXuat.php");
            break;
        case 3: 
            include ("pLoaiSanPham.php");
            break;
        case 6:
            include ("pKhachHang.php");
            break;
        case 4:
            include ("pSanPham.php");
            break;
        case 5:
            include ("pDonDatHang.php");
            break;
        case 7:
            include ("pHome.php");
            break;
        default:
            include ("pError.php");
            break;
    }
?>