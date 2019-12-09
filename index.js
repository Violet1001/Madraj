var voltar_filtro=0;
var voltar=0;
$(function(){
	carrega_estadios(0);
	function carrega_estadios(p){
		$.ajax({
			url:"carrega_estadios.php",
			type:"post",
			data:{pagina:p},
			success:function(a){
				console.log(a);
				var imagens="<div id='imagens_estadio' class='row p-3'>"
					for(i=0;a.length>i;i++){
						imagens+="<img src='./estadios_img/"+a[i].nome_estadio+".jpg' valor='"+a[i].nome_estadio+"' class='mt-2 mb-2 col-md-6'/>";
					}
				imagens+="</div>";

				$("#estadios").html("");
				$("#estadios").append(imagens);
			},
			error:function(erro){
				console.log(erro);
			}	
		});
	}
	$(document).on("click","img",function(){
		var valor=$(this).attr("valor");
		$.ajax({
			url:"carrega_estadios.php",
			type:"get",
			data:{imagem:valor},
			success:function(h){
				console.log(h);
				var imagens="<div id='imagens_estadio' class='table-responsive'>"
					imagens+="<table class='table table-bordered m-1'>";
						imagens+="<tr>";
							imagens+="<td>";
								imagens+="<img src='./estadios_img/"+h[0].nome_estadio+".jpg' valor='"+h[0].nome_estadio+"' class='mt-2 mb-2'/><br/>";
							imagens+="Lotação máxima: "+h[0].lotacao;
							imagens+="</td>";
							imagens+="<td>";
								imagens+=h[0].descricao;
							imagens+="</td>";
						imagens+="</tr>";
					imagens+="</table>";
				imagens+="</div>";

				$("#estadios").html("");
				$("#estadios").append(imagens);
				voltar=$("#opcoes").html();
				
				$("#opcoes").html("");
				var botao="<button class='btn btn-dark' id='pesquisa_outro'>Pesquisar outro</button>";
				$("#opcoes").html(botao);
			},
			error:function(erro){
				console.log(erro);
			}
		});
	});
	$(document).on("click","#pesquisa_outro",function(){
		carrega_estadios(0);
		$("#opcoes").html(voltar);

	});
	$(document).on("click","#filtrar",function(){
		$.ajax({
			url:"carrega_estadios",
			type:"get",
			data:{
				time:$("select[name='time'] option:selected").val(),
				nome:$("select[name='estadio'] option:selected").val()
			},
			success:function(j){
				var filtro="<div id='imagem_filtrada'>";
				filtro+="<img src='./estadios_img/"+j[0].nome_estadio+".jpg' valor='"+j[0].nome_estadio+"' class='mt-2 mb-2'/><br/>";
				filtro+="</div>";
				
				voltar_filtro=$("#opcoes").html();
				$("#opcoes").html("");
				var botao="<button class='btn btn-dark' id='voltar_filtro'>Resetar</button>";
				$("#opcoes").html(botao);
				$("#estadios").html(filtro);
			},
			error:function(erro){
				console.log(erro);
			}
		});
	});

	$(document).on("click","#voltar_filtro",function(){
		carrega_estadios(0);
		$("#opcoes").html(voltar_filtro);
	});
});