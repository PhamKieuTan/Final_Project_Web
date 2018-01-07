
<div class="ChiTietSanPham">
    <h3>Kết Quả Tìm Kiếm</h3>
    <div class="border-shop"></div>
    <div class="product-new">
        <?php
        //giới hạn số trang
        $limit = 10;
        $offset = 0;
        // if( isset($_GET["curpage"]) )
        // {
        //     $curpage = $_GET["curpage"];
        //     settype($curpage, "int");
        // }
        // else
        // {
        //     $curpage = 1;	
        // }
        ?>
        <div class="product-boder">
           <?php
            
            if(isset($_REQUEST['TimKiem']))
            {
                $TuKhoa = $_POST['TuKhoa'] ;
                if(empty($_POST['TuKhoa']))
                {
                    echo "Vui Lòng Nhập Từ Khóa Để Tìm Kiếm !";
                    include ("pages/pSanPhamGoiY.php");
                }
                else 
                {
                    //số tin 1 trang
                    //$offset = ($curpage - 1) * $limit;
                    $sql = "SELECT sp.TenSanPham,sp.MaSanPham,sp.GiaSanPham,sp.HinhURL,sp.MoTa 
                            FROM SANPHAM sp join HANGSANXUAT hsx on sp.MaHangSanXuat = hsx.MaHangSanXuat join LOAISANPHAM lsp on lsp.MaLoaiSanPham = sp.MaLoaiSanPham
                            WHERE sp.BiXoa = FALSE AND sp.TenSanPham LIKE '%$TuKhoa%' OR lsp.TenLoaiSanPham LIKE '%$TuKhoa%' OR hsx.TenHangSanXuat LIKE '%$TuKhoa%'
                            ORDER BY sp.MaSanPham DESC
                            LIMIT $offset,$limit";

                    // $sqlpage = "SELECT sp.MaSanPham,hsx.MaHangSanXuat,lsp.MaLoaiSanPham
                    // FROM SANPHAM sp join HANGSANXUAT hsx on sp.MaHangSanXuat = hsx.MaHangSanXuat join LOAISANPHAM lsp on lsp.MaLoaiSanPham = sp.MaLoaiSanPham
                    // WHERE sp.BiXoa = FALSE AND sp.TenSanPham LIKE '%$TuKhoa%' OR lsp.TenLoaiSanPham LIKE '%$TuKhoa%' OR hsx.TenHangSanXuat LIKE '%$TuKhoa%'";

                    $result = DataProvider::ExecuteQuery($sql);
                    $numrow = mysqli_num_rows($result);

                    if($numrow > 0 && $TuKhoa !='')
                    {
                        echo "Đã Tìm Thấy <b><i> $numrow</i></b> Kết Quả Với Từ Khóa <b><i>'$TuKhoa'</i></b> <br/><br/><br/>";
                        while($row = mysqli_fetch_array($result))
                        {
                            $hinhURL = $row["HinhURL"];
                            $tenSanPham = $row["TenSanPham"];
                            $giaSanPham = $row["GiaSanPham"];
                            $maSanPham = $row["MaSanPham"];
                            include ("templates/tempThongTinSanPham.php");
                        }
                    }
                    else {      
                        echo "Không Tìm Thấy Kết Quả Cho Từ Khóa <b><i>'$TuKhoa'</i></b>   !";
                        include ("pages/pSanPhamGoiY.php");
                    }                     
                }            
            }
            ?>  
        </div>
        <!-- <div class="phantrang">
        <?php
             //số trang bằng tổng số dòng chia cho gh.
            // $totalpage = Ceil ($numrow / $limit);
            // echo $totalpage;
            //  for($t=1;$t<$totalpage;$t++)
            //      {
            //          echo "<a href='index.php?a=5&curpage=$t'>Trang $t</a>";
            //      }
        ?>
        </div> -->
    </div>
</div>
