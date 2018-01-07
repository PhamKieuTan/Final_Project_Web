<?php
	
$_SESSION['capcha'] = randomString( 5 );

createCapcha();
exit();
function randomString( $length ) {
	$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	$size  = strlen( $chars );

	$res = "";
	for ( $i = 0; $i < $length; $i ++ ) {
		$res .= $chars[ rand( 0, $size - 1 ) ];
		$res = substr( str_shuffle( $chars ), 0, $length );
	}

	return $res;
}
function createCapcha() {
	header( "Content-type: images/png" );
	$im = @imagecreate( 70, 40 ) or die( "Cannot Initialize new GD image stream" );

// 100, 40 là kích thước mặc định của file hình được tạo ra
	$background_color = imagecolorallocate( $im, 225, 225, 225 ); // màu nền
	$text_color       = imagecolorallocate( $im, 0, 0, 0 ); // màu chữ

	imagestring( $im, 5, 10, 10, $_SESSION['capcha'], $text_color );
// "5" là kích thước font chữ
// "10,10" là vị trí của các kí tự trong hình
	imagepng( $im );
	imagedestroy( $im );
}