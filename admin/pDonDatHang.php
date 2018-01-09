<div class="admin-table">
    <h1>Thông Tin Sản Phẩm</h1>
    <div class="border-shop"></div>
    <table>
        <tr id="hsx">
            <th>STT</th>
            <th width="100px">Mã HĐ</th>
            <th width="400px">Ngày Lập</th>
            <th width="400px">Tổng Thành Tiền</th>
        </tr>
        <?php
            $i = 1;
            $sql = "SELECT MaDonDatHang,NgayLap,TongThanhTien
                    FROM DonDatHang
                    LIMIT 0,20";
            $result = DataProvider::ExecuteQuery($sql);
            while($row = mysqli_fetch_array($result))
            {
                $mahd = $row["MaDonDatHang"];
                $ngay = $row["NgayLap"];
                $tien = $row["TongThanhTien"];    
                include ("tDonDatHang.php");
            }
        ?>
    </table>
</div>