<header class="header">
    <div class="top-header">
        <div id="topright-header">
            <ul>
                <?php
                    if(isset($_SESSION['maTaiKhoan']))
                    {
                        include ("modules/mThongTinTaiKhoan.php");
                    }
                    else
                    {
                        include ("modules/mDangNhap-DangKy.php");
                    }
                ?>
                <li><a href="#">Kiểm Tra Đơn Hàng</a></li>
                <li><span><a href="#">Khuyến mãi HOT</a></span></li>
                <li><span class="nokichuong"><img src="./icon/icon-chuong.png" alt="" title="Khuyến mãi HOT"></span></li>              
            </ul>    
        </div>   
        <div id="topleft-header">
            <ul>
                <li><a href="index.php"><span><img src="./icon/Home.png" alt=""  title="Trang chủ"></span></a></li>
                <li id="Hotline">Hotline: <span><img src="./icon/tel.png" width="20" height="20" alt=""  title="Hotline"></span> 01234 567 890 </li>
            </ul>    
        </div>  
    </div>
    <div class="bottom-header">
        <div id="bottomleft-header">
            <!-- <a><b><i>thegioilinhkiendientu.com</i></b></a> -->
           <a href="index.php"><img src="./icon/logoshop.PNG" alt="" title="thegioilinhkiendientu.com, Xin chào !"></a>
        </div>
        <div class="bottom-center-header">
            <form name="TimKiem" action="index.php?a=5" method="post">
                <div id="input-search">
                    <select name="TuyChon" id="select-search">
                        <option value="0">Tất cả danh mục</option>
                        <option value="1">Hãng Sản Xuất</option>
                        <option value="2">Loại Sản Phẩm</option>
                        <option value="3">Giá Thấp Dần</option>
                        <option value="4">Giá Tăng Dần</option>
                    </select>
                    <input type="search" name="TuKhoa" id="search" placeholder="Bạn cần tìm gì hôm nay?" />
                    <button class="icon" name="TimKiem" type="submit"/>
						<i class="fa fa-search"></i>
                    </button>
                </div>
            </form>
            <div id="bottom-right-header">
                <ul>
                    <li><a href="index.php?a=11"><span><img src="./icon/bag.png" width="30" height="25"alt="" title="Giỏ hàng của bạn"></span>Giỏ hàng</a></li>  
                </ul>
            </div>
        </div>
    </div>
</header>