<?php
    $a = (isset($_GET['a'])) ? $_GET['a'] : 1; 
    
    switch ($a) {
        case 1:
            include ("pages/pHome.php");
            break;
        case 2: 
            include ("pages/pSanPhamTheoHang.php");
            break;
        case 3: 
            include ("pages/pSanPhamTheoLoai.php");
            break;
        case 4:
            include ("pages/pThongTinChiTietSanPham.php");
            break;
        case 5:
            include ("pages/pTimKiem.php");
            break;
        case 6:
            include ("templates/tempDangNhap.php");
            break;
        case 7:
            include ("pages/pXuLyDangNhap.php");
            break;
        case 8:
            include ("templates/tempDangKy.php");
            break;
        case 9:
            include ("pages/pXuLyDangKy.php");
            break;
        case 10:
            include ("pages/pDangXuat.php");
            break;
        case 11:
            include ("pages/pQuanLyGioHang.php");
            break;
        case 12:
            include ("pages/pThemSanPhamGioHang.php");
            break;
        case 13:
            include ("pages/pCapNhapGioHang.php");
            break;
        case 14:
            include ("pages/pThanhToanGioHang.php");
            break;
        default:
            include ("pages/pError.php");
            break;
    }
?>