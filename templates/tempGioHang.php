<form name="frmGioHang" action="index.php?a=13" method="post">
    <table class="title-cart">
        <td align="center" class="td-img">
            <img src="images/<?php echo $hinhURL; ?>" width="117" height="117"/>
        </td>
        <td width="383">
            <?php echo $tenSanPham; ?>
        </td>

        <td align="center" width="142" align="center" >
            <?php echo $giaSanPham; ?> VNĐ
        </td>
        <td align="center" width="142">
            <span>
                <button  type="submit">
                    <i class="fa  fa-minus"></i>
                </button>
            </span>
            <input type="text" name="txtSL" value="<?php echo $p->num; ?>" size="2" />
            <input type="hidden" name="maHDSP" value="<?php echo $p->id; ?>" />
            <span>
                <button  type="submit">
                    <i class="fa  fa-plus"></i>
                </button> 
            </span>
        </td>
    </table>
</form>


