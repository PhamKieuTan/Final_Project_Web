<?php
    if(isset($_POST["txtSL"]) && isset($_POST["maHDSP"]))
    {
        $slsp = $_POST["txtSL"];
        $id = $_POST["maHDSP"];

        if(is_numeric($slsp)) {
            $cart = unserialize($_SESSION["cart"]);
            if ($slsp == 0)
                $cart->delete($id);
            else
                if($slsp > 0)
                    $cart->update($id, $slsp);
            $_SESSION["cart"] = serialize($cart);
        }
    }
    DataProvider::ChangeURL('index.php?a=12');
?>