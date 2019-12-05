<?php
	$local="localhost:3308";
	$usuario="root";
	$senha="";
	$bd="mandraj";
	
	$conexao=mysqli_connect($local,$usuario,$senha,$bd) or die("ERRO".mysqli_error($conexao));
	mysqli_set_charset($conexao,"utf8");
?>