<?php
    //Xử lý đăng nhập
    if(isset($_POST['txtUs']) && isset($_POST['txtPs']))
    {
        $User = $_POST['txtUs'];
        $Pas = $_POST['txtPs'];

        $sql = "SELECT MaTaiKhoan,MaLoaiTaiKhoan,TenDangNhap,TenHienThi,MatKhau FROM TaiKhoan 
                WHERE TenDangNhap = '$User' AND MatKhau ='$Pas'";
        $result = DataProvider::ExecuteQuery($sql);
        $row = mysqli_fetch_array($result);
        if($row != null)
        {
            $_SESSION["maTaiKhoan"] = $row['MaTaiKhoan'];
            $_SESSION["maLoaiTaiKhoan"] = $row['MaLoaiTaiKhoan'];
            $_SESSION["tenHienThi"] = $row['TenHienThi'];          
            if($_SESSION["maLoaiTaiKhoan"] == 4)
                {
                    DataProvider::ChangeURL("admin/index.php");
                } 
            else    
            {
                echo "<script>alert('Đăng nhập thành công !');</script>";
                DataProvider::ChangeURL("index.php?a=11");
            }
        }
        else
        {
            echo "<script>alert('Sai tên đăng nhập hoặc mật khẩu !');</script>";
            DataProvider::ChangeURL("index.php?a=6");
        }
    }
?>
