<div class="admin-table">
    <h1>Thông Tin Các Loại Sản Phẩm</h1>
    <div class="border-shop"></div>
    <table>
        <tr id="hsx">
            <th>STT</th>
            <th width="200px">Mã Loại Sản Phẩm</th>
            <th width="300px">Tên Loại Sản Phẩm</th>
        </tr>
        <?php
            $i = 1;
            $sql = "SELECT MaLoaiSanPham,TenLoaiSanPham FROM LoaiSanPham";
            $result = DataProvider::ExecuteQuery($sql);
            while($row = mysqli_fetch_array($result))
            {
                $mahsx = $row['MaLoaiSanPham'];
                $tenhsx =  $row['TenLoaiSanPham'];
                include ("./tLoaiSanPham.php");
            }
        ?>
    </table>
</div>