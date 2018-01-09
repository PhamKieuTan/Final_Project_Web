
<script>
    var t = 1;
    $(ducument).ready(function(){
        $("#XemThem ").click(function(){
            t = t + 1;  
            $.get("pages/pSanPhamTheoHang.php",{page:t},function(data){
                $(".product-boder").append(data);
            });
        
        });
    });
</script>

<div id="XemThem">
    Xem thêm >>
</div>
