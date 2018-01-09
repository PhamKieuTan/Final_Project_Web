<?
    if(isset($_POST['txtFullname']) && isset($_POST['txtUsername']) && isset($_POST['txtPassword']) && isset($_POST['txtEmail']) && isset($_POST['txttel']) && isset($_POST['city']))
    {
        $HoTen = $_POST['txtFullname'];
        $Username = $_POST['txtUsername'];
        $Password = $_POST['txtPassword'];
        $email = $_POST['txtEmail'];
        $tel = $_POST['txttel'];
        $DiaChi = $_POST['city'];
        if (!$Username || !$Password || !$email || !$HoTen)
        {
            echo "Tên đăng nhập, mật khẩu, email và họ tên không được trống. <a href='javascript: history.go(-1)'>Trở lại</a>";
            exit;
        }
        $Password = md5($Password);
        if (mysql_num_rows(mysql_query("SELECT TenDangNhap FROM TaiKhoan WHERE TenDangNhap = '$Username'")) > 0)
        {
            echo "Tên đăng nhập này đã có người dùng. Vui lòng chọn tên đăng nhập khác.";
            DataProvider::ChangeURL("index.php?a=8");
            exit;
        }
        if (!eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$", $email))
        {
            echo "Email này không hợp lệ. Vui long nhập email khác.";
            DataProvider::ChangeURL("index.php?a=8");
            exit;
        }
        if (mysql_num_rows(mysql_query("SELECT email FROM TaiKhoan WHERE email='$email'")) > 0)
        {
            echo "Email này đã có người dùng. Vui lòng chọn Email khác.";
            DataProvider::ChangeURL("index.php?a=8");
            exit;
        }
        @$add = mysql_query("INSERT INTO TaiKhoan (
            TenDangNhap,
            MatKhau,
            TenHienThi,
            DiaChi,
            DienThoai,
            Emails
        )
        VALUE (
            '{$Username}',
            '{$Password}',
            '{$HoTen}',
            '{$DiaChi}',
            '{$tel}',
            '{$email}'")
    }
?>