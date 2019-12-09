		<?php include("head.inc"); ?>
		<title>Home</title>
		<script src="index.js"></script>
	</head>
	<body>
		<div class="container-fluid">
			<h4 class="text-center">Filtro de estádios</h4>
			<div id="filtro">
				<div class="container border border-dark p-3 text-center" id="opcoes">
					Filtrar pelo nome do estádio: 
					<select name="estadio" id="estadio">
						<option></option>
						<?php
							include("conexao.php");

							$consulta="SELECT nome_estadio FROM estadio";
							$resultado=mysqli_query($conexao,$consulta);

							while($linha=mysqli_fetch_assoc($resultado)){
								echo"<option value='".$linha["nome_estadio"]."'>".$linha["nome_estadio"]."</option>";
							}
						?>
					</select>
					<br/>
					Filtrar pelo time do estádio: 
					<select name="time" id="time">
						<option></option>
						<?php
							$consulta="SELECT nome_time FROM time";
							$resultado=mysqli_query($conexao,$consulta);

							while($linha=mysqli_fetch_assoc($resultado)){
								echo"<option value='".$linha["nome_time"]."'>".$linha["nome_time"]."</option>";
							}
						?>
					</select>
					<button class="btn btn-dark ml-3" id="filtrar">Filtrar</button>
					
				</div>
			</div>
			<br/>
				<div id="estadios" class="container border border-dark"></div>
		</div>
	</body>
</html>