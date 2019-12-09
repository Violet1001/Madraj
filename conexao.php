<?php
	$local="localhost:3306";
	$usuario="root";
	$senha="usbw";
	$bd="mandraj";
	
	$conexao=mysqli_connect($local,$usuario,$senha,$bd) or die("ERRO".mysqli_error($conexao));
	mysqli_set_charset($conexao,"utf8");
?>