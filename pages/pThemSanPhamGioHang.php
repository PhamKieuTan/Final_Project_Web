<?php
    if(isset($_GET['id']))
    {
        $maSanPham = $_GET['id'];
        $cart = new ShoppingCart();

        if(isset($_SESSION['cart']))
            $cart = unserialize($_SESSION['cart']);

        $cart->Add($maSanPham);
        $_SESSION['cart'] = serialize($cart);
        // DataProvider::ChangeURL('index.php?a=11');
    }
    DataProvider::ChangeURL('index.php?a=11');
    

?>