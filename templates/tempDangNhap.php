<!-- Kiểm tra các trường -->

<div class="box-DangNhap">

    <h3>Chào mừng bạn đã đến với <a href="index.php">thegioilinhkiendientu.com</a>! Đăng Nhập ngay để nhập ngay ưu đãi cực khủng và cực chất nào !</h3>
    <div class="border-shop"></div>
    <div class="DangNhap">
        <form name="frmDangNhap" action="index.php?a=7" method="post" style="margin-left: 90px;" onsubmit="return KiemTraDangNhap()">
            <table cellpadding='0' cellspacing='0' align="center" height="200" width="500" style="background:#fff;">
                <tr>
                    <td align="right">
                        Tên đăng nhập  <span class="require">*</span>:
                    </td>
                    <td align="center">
                        <input type='text' name='txtUs'  style="height: 30px;width: 192px;" title="Vui lòng điền vào trường này."/>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Mật khẩu  <span class="require">*</span>:
                    </td>
                    <td align="center">
                        <input type='password' name='txtPs'  style="height: 30px;width: 192px;" title="Vui lòng điền vào trường này."/>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <input type='submit' style="height: 30px;width: 94px;" value='Đăng nhập'  title="Đăng nhập" />
                    </td>
                    <td align="right">
                        Bạn chưa có tài khoản?<a href="index.php?a=8">Đăng Ký ngay!</a>
                    </td>
                </tr>
            </table> 
        </form>
    </div>
</div>
<script type="text/javascript">
    function KiemTraDangNhap(){
        var kt = document.getElementById("txtUs");
        if(kt.value == "")
        {
            kt.focus();
            alert("Vui lòng điền tên đăng nhập !");
            return false;
        }
        var kt = document.getElementById("txtPs");
        if(kt.value == "")
        {
            kt.focus();
            alert("Bạn chưa nhập mật khẩu !");
            return false;
        }
        return true;
    }
</script>