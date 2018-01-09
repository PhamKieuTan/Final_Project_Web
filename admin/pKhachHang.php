<div class="admin-table">
    <h1>Thông Tin Khách Hàng</h1>
    <div class="border-shop"></div>
    <table>
        <tr id="hsx">
            <th>STT</th>
            <th width="300px">Họ Tên</th>
            <th width="400px">Địa Chỉ</th>
            <th width="200px">Số Điện Thoại</th>
            <th width="300px">Email</th>
        </tr>
        <?php
            $i = 1;
            $sql = "SELECT TenHienThi,DiaChi,DienThoai,email
                    FROM TaiKhoan WHERE MaLoaiTaiKhoan <> 4
                    LIMIT 0,20";
            $result = DataProvider::ExecuteQuery($sql);
            while($row = mysqli_fetch_array($result))
            {
                $Ten = $row["TenHienThi"];
                $Diachi = $row["DiaChi"];
                $SDT = $row["DienThoai"];    
                $email = $row["email"];    
                include ("tKhachHang.php");
            }
        ?>
    </table>
</div>