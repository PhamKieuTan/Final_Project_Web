<div class="product-new">
    <div class="product-title-new">
        <a href="#">
            <h3>SẢN PHẨM MỚI </h3> 
        </a>     
    </div>
    <div class="product-boder">
    <?php
        $sql = "SELECT sp.MaSanPham, sp.TenSanPham, sp.GiaSanPham, sp.HinhURL
                FROM SanPham sp
                ORDER BY sp.NgayNhap DESC
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