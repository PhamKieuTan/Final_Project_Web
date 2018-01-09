<?
    if(isset($_POST['txtFullname']) && isset($_POST['txtUsername']) && isset($_POST['txtPassword']) && isset($_POST['txtEmail']) && isset($_POST['txttel']) && isset($_POST['city']))
    {
        $HoTen = $_POST['txtFullname'];
        $Username = $_POST['txtUsername'];
        $Password = $_POST['txtPassword'];
        $email = $_POST['txtEmail'];
        $tel = $_POST['txttel'];
        $DiaChi = $_POST['city'];

        $sql = "INSERT INTO TAIKHOAN (TenDangNhap,MatKhau,TenHienThi,DiaChi,email,DienThoai)
                 VALUES ('$Username','$Password','$HoTen','$DiaChi','$email','$tel')";

        $result = DataProvider::ExecuteQuery($sql);
        
        DataProvider::ChangeURL("index.php?a=6");
    }
?>