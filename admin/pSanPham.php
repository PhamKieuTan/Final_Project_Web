<div class="admin-table">
    <h1>Thông Tin Sản Phẩm</h1>
    <div class="border-shop"></div>
    <table>
        <tr id="hsx">
            <th>STT</th>
            <th width="100px">Mã SP</th>
            <th width="400px">Tên Sản Phẩm</th>
            <th width="400px">Hình Sản Phẩm</th>
            <th width="300px">Giá Sản Phẩm</th>
            <th width="200px">Số Lượng Bán</th>
            <th width="200px">Số Lượng Tồn</th>
            <th width="200px">Số Lượt Xem</th>
        </tr>
        <?php
            $i = 1;
            $sql = "SELECT sp.MaSanPham,sp.MaLoaiSanPham,sp.MaHangSanXuat, sp.TenSanPham, sp.GiaSanPham, sp.HinhURL, sp.SoLuongTon, sp.SoLuongBan,sp.SoLuotXem,sp.MoTa
                    FROM SanPham sp
                    LIMIT 0,20";
            $result = DataProvider::ExecuteQuery($sql);
            while($row = mysqli_fetch_array($result))
            {
                $hinhURL = $row["HinhURL"];
                $tenSanPham = $row["TenSanPham"];
                $giaSanPham = $row["GiaSanPham"];
                $soLuongBan = $row["SoLuongBan"];
                $soLuongTon = $row["SoLuongTon"];
                $soLuotXem = $row["SoLuotXem"];         
                $moTa = $row["MoTa"];      
                $maSP = $row["MaSanPham"];       
                include ("tSanPham.php");
            }
        ?>
    </table>
</div>