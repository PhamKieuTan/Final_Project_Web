
<?php
    if(isset($_GET['id']))
    {
        $maSanPham = $_GET['id'];
        $sql = "SELECT sp.MaSanPham,sp.MaLoaiSanPham,sp.MaHangSanXuat, sp.TenSanPham, sp.GiaSanPham, sp.HinhURL, sp.SoLuongTon, sp.SoLuongBan,sp.SoLuotXem,lsp.TenLoaiSanPham, hsx.TenHangSanXuat, sp.MoTa
                FROM SanPham sp, LoaiSanPham lsp, HangSanXuat hsx
                WHERE sp.BiXoa = FALSE AND sp.MaSanPham = $maSanPham AND sp.MaLoaiSanPham = lsp.MaLoaiSanPham AND sp.MaHangSanXuat = hsx.MaHangSanXuat";
        $result = DataProvider::ExecuteQuery($sql);
        while($row = mysqli_fetch_array($result))
        {
            $hinhURL = $row["HinhURL"];
            $tenSanPham = $row["TenSanPham"];
            $giaSanPham = $row["GiaSanPham"];
            $tenHangSanXuat = $row["TenHangSanXuat"];
            $soLuongBan = $row["SoLuongBan"];
            $soLuotXem = $row["SoLuotXem"];
            $tenLoaiSanPham = $row["TenLoaiSanPham"];
            $moTa = $row["MoTa"];
            $maLoaiSP = $row["MaLoaiSanPham"];
            $maHangSanXuat = $row["MaHangSanXuat"];
            include ("templates/tempThongTinChiTietSanPham.php");
        }
    }
    else
    {
        DataProvider::ChangeURL("index.php");
    }
?>
