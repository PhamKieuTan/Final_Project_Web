<div class="product-new">
    <div class="product-title-cunghang">
        <a href="#">
            <h3>Sản Phẩm Cùng Loại</h3> 
        </a>     
    </div>
    <div class="product-boder">
    <?php
        $sql = "SELECT sp.MaSanPham, sp.TenSanPham, sp.GiaSanPham, sp.HinhURL
                FROM SanPham sp
                WHERE sp.BiXoa = FALSE AND sp.MaLoaiSanPham = $maLoaiSP
				LIMIT 0,5";
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