		<?php include("head.inc"); ?>
		<title>Home</title>
		<script src="index.js"></script>
	</head>
	<body>
		<div class="container" id="fon">
			<h2 class="text-center">Filtro de estádios</h2>
			<div id="filtro" class="border border-primary p-2 text-center">
				<div class="container " id="opcoes">
					Filtrar pelo nome do estádio: 
					<select name="estadio" id="estadio" class="mt-3">
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
					<select name="time" id="time" class="m-2">
						<option></option>
						<?php
							$consulta="SELECT nome_time FROM time";
							$resultado=mysqli_query($conexao,$consulta);

							while($linha=mysqli_fetch_assoc($resultado)){
								echo"<option value='".$linha["nome_time"]."'>".$linha["nome_time"]."</option>";
							}
						?>
					</select>
				</div>
				<button class="btn btn-primary mt-3" id="filtrar">Filtrar</button>
			</div>
			<br/>
				<div id="estadios" class="container border border-primary m-3"></div>
		</div>
	</body>
</html>