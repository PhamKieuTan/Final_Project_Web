<div class="ChiTietSanPham">
    <h3>Giỏ hàng của bạn</h3>
    <div class="border-shop"></div>
    <div class="QLGioHang">
        <table class="">
            <thead>
                <td width="137" align="center">Sản Phẩm</td>
                <td width="383"></td>
                <td width="142" align="center">Giá</td>
                
                <td width="142" align="center" >Số lượng</thead>
            </thead>
            <tbody>
                <?php
                    $totalPrice = 0;
                    if(isset($_SESSION["cart"]))
                    {
                        $cart = unserialize($_SESSION["cart"]);
                        $i = 1;

                        foreach ($cart->listProduct as $p)
                        {
                            $sql = "SELECT TenSanPham, HinhURL, GiaSanPham FROM SanPham WHERE MaSanPham = $p->id";
                            $result = DataProvider::ExecuteQuery($sql);
                            $row = mysqli_fetch_array($result);

                            $tenSanPham = $row['TenSanPham'];
                            $maSanPham = $p->id;
                            $hinhURL = $row['HinhURL'];
                            $giaSanPham = $row['GiaSanPham'];

                            include ("templates/tempGioHang.php");
                            $totalPrice += $p->num * $giaSanPham;
                        }
                    }
                ?>
            </tbody>
        </table>
    </div>
    <div class="pprice">
        <b>Tổng tiền </b> (Đã bao gồm VAT): <?php echo "<b> $totalPrice </b>"; ?> VNĐ.
        <?php
            $_SESSION["totalPrice"] = $totalPrice;
        ?>
    </div>
    <div class="ThanhToan">
        <button id="ThanhToanSP" style="height: 35px;width: 202px;">
            <a href="index.php?a=14"> Tiến Hành Thanh Toán</a>
        </button>
    </div>
</div>
