<?php include ("pages/pSlider.php"); ?>
<div class="product-new">
    <div class="product-title-hang">
        <a href="#">
            <h3>SẢN PHẨM THEO HÃNG </h3> 
        </a>     
    </div>
    <div class="product-boder">
    <?php
        // $page = $_GET["page"];
        // settype($page,"int");       
        // $from = ($page-1)*$number_news;
        $number_news = 10;
        $from = 10;

        $x = $_GET["id"];
        if(isset($x) == false)
            DataProvider::ChangeURL("index.php?a=0&id=1");
        $sql = "SELECT sp.MaSanPham, sp.TenSanPham, sp.GiaSanPham, sp.HinhURL
                FROM SanPham sp
                WHERE sp.BiXoa = FALSE AND sp.MaHangSanXuat = ".$x;
                /*ORDER BY sp.NgayNhap ASC
                LIMIT $from,$number_news";*/
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