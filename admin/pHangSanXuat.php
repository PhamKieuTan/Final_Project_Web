<div class="admin-table">
    <h1>Thông Tin Các Hãng Sản Xuẩt</h1>
    <div class="border-shop"></div>
    <table>
        <tr id="hsx">
            <th>STT</th>
            <th width="200px">Mã Hãng Sản Xuất</th>
            <th width="200px">Tên Hãng Sản Xuất</th>
            <th width="200px">Logo Hãng Sản Xuât</th>
        </tr>
        <?php
            $i = 1;
            $sql = "SELECT MaHangSanXuat,TenHangSanXuat,LogoURL FROM HangSanXuat";
            $result = DataProvider::ExecuteQuery($sql);
            while($row = mysqli_fetch_array($result))
            {
                $mahsx = $row['MaHangSanXuat'];
                $tenhsx =  $row['TenHangSanXuat'];
                $hinhURL = $row['LogoURL'];
                include ("./tHangSanXuat.php");
            }
        ?>
    </table>
</div>