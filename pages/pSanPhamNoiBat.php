<div class="product-new">
    <div class="product-title-hot" style="margin-top: 35px">
        <a href="#">
            <h3>SẢN PHẨM NỔI BẬT </h3>
        </a>
    </div>
    <div class="product-boder" style="margin-bottom: 4px" >
    <?php
        $sql = "SELECT sp.MaSanPham, sp.TenSanPham, sp.GiaSanPham, sp.HinhURL
                FROM SanPham sp
                WHERE sp.BiXoa = FALSE
                ORDER BY sp.SoLuongBan DESC
                LIMIT 0, 12";
        $result = DataProvider::ExecuteQuery($sql);
        while($row = mysqli_fetch_array($result))
        {
            $hinhURL = $row["HinhURL"];
            $tenSanPham = $row["TenSanPham"];
            $giaSanPham = $row["GiaSanPham"];
            $maSanPham = $row["MaSanPham"];
            include ("templates/tempThongTinSanPham.php");
        }
    ?>
    </div>
</div>