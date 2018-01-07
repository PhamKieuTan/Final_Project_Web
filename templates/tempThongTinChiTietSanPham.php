<div class="ChiTietSanPham">
    <h3>CHI TIẾT SẢN PHẨM</h3>
    <div class="border-shop"></div>
    <div class="img-sp">
        <img src="images/<?php echo $hinhURL; ?>">
    </div>
    <div class="ThongTin-right">
        <div class="TenSanPham"><span><b><?php echo $tenSanPham;?></b></span></div>
        <div class="GiaSanPham">Giá: <?php echo $giaSanPham; ?> VNĐ</div>
        <div class="TenHang">Hãng Sản Xuất: <span id="hsx"><?php echo $tenHangSanXuat; ?></span></div>
        <div class="SoLuotXem">Lượt Xem: <?php echo $soLuotXem; ?></div>
        <div class="SoLuongBan">Số Lượng Bán: <?php echo $soLuongBan; ?></div>
        <div class="LoaiSanPham">Loại Sản Phẩm: <?php echo   $tenLoaiSanPham; ?></div>
        <div class="GioHang">
            <a href="#"><img src="icon/muangay.PNG" alt="" title="Thêm vào giỏ hàng"></a>
        </div>
    </div>
    <div class="MoTa">
            <div id="info-sp">Thông Tin Chi Tiết:</div>
            <div id="info-sp2"><br><?php echo $moTa; ?></br></div>
    </div>
    <div class="border-shop"></div>
</div>
<!-- Cập nhập số lượt xem -->
<?php 
    $sqlupdate = "update SANPHAM  set SoLuotXem = SoLuotXem + 1 WHERE MaSanPham =".$maSanPham;
    DataProvider::ExecuteQuery($sqlupdate);
?>
<?php include ("pages/pSanPhamCungHang.php");?>
<?php include ("pages/pSanPhamCungLoai.php");?>