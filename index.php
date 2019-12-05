		<?php include("head.inc"); ?>
		<title>Home</title>
	</head>
	<body>
		<div class="container-fluid">
			<div id="filtro">
				<h4 class="text-center">Filtro de estádios</h4>
				<div class="container border border-dark p-3 text-center" id="opcoes">
					Filtrar pelo time do estádio: <select name="time">
						<?php
							include("conexao.php");

							$consulta="SELECT nome FROM estadio";
							$resultado=mysqli_query($conexao,$consulta);

							while($linha=mysqli_fetch_assoc($resultado)){
								echo"<option value='".$linha["nome"]."'>".$linha["nome"]."</option>";
							}
						?>
					</select>
					Filtrar pelo time do estádio: 
					<select name="time" id="time">
						<?php
							include("conexao.php");

							$consulta="SELECT nome FROM time";
							$resultado=mysqli_query($conexao,$consulta);

							while($linha=mysqli_fetch_assoc($resultado)){
								echo"<option value='".$linha["nome"]."'>".$linha["nome"]."</option>";
							}
						?>
					</select>
					<button class="btn btn-dark ml-3" id="filtro">Filtrar</button>
				</div>
					<br/>
				<div id="estadios" class="container border border-dark" style="heigth:100px;"></div>
			</div>
		</div>
	</body>
</html>