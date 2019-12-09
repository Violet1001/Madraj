<?php
	include("conexao.php");
	header("Content-type:application/json");

	$consulta="SELECT * FROM estadio";

	if(!empty($_GET)){
		if(isset($_GET["imagem"])){
			$imagem=$_GET["imagem"];

			$consulta.=" WHERE nome_estadio='$imagem'";
		}
		elseif(isset($_GET["nome"]) || isset($_GET["time"])){
			if(isset($_GET["nome"])){
				$nome=$_GET["nome"];
			}
			if(isset($_GET["time"])){
				$time=$_GET["time"];
			}
			if(!empty($nome)){
				$consulta.=" WHERE nome_estadio='$nome'";
				$resultado=mysqli_query($conexao,$consulta);

				while($linha=mysqli_fetch_assoc($resultado)){
					$matriz[]=$linha;
				}

				echo json_encode($matriz);
				die();
			}
			if(!empty($time)){
				$consulta.=" WHERE nome_time='$time'";
				$resultado=mysqli_query($conexao,$consulta);

				while($linha=mysqli_fetch_assoc($resultado)){
					$matriz[]=$linha;
				}

				echo json_encode($matriz);
				die();
			}
			if(empty($nome) && empty($time)){
				echo"Nenhum filtro selecionado.";
				die();
			}
		}
	}

	$resultado=mysqli_query($conexao,$consulta);

	while($linha=mysqli_fetch_assoc($resultado)){
		$matriz[]=$linha;
	}

	echo json_encode($matriz);
?>