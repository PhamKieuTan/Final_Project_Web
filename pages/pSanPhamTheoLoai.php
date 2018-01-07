<?php include ("pages/pSlider.php"); ?>
<div class="product-new">
    <div class="product-title-loai">
        <a href="#">
            <h3>SẢN PHẨM THEO LOẠI </h3> 
        </a>     
    </div>
    <div class="product-boder">
    <?php
        if(isset($_GET["id"]) == false)
            DataProvider::ChangeURL("index.php?a=0&id=1");
        $sql = "SELECT sp.MaSanPham, sp.TenSanPham, sp.GiaSanPham, sp.HinhURL
                FROM SanPham sp
                WHERE sp.BiXoa = FALSE AND sp.MaLoaiSanPham =  ".$_GET["id"];
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
