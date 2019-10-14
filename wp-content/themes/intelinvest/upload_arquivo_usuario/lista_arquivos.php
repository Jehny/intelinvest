<?php
    include "database.php";
    include "usuario.php";
    include "arquivo.php";
    include "perfil.php";

    include "header.php";
    include "menu2.php";
    $urlArquivos = "http://".$_SERVER['HTTP_HOST'] . "/intelinvest/wp-content/themes/intelinvest/upload_arquivo_usuario/uploads/";
    $usuario = new Usuario();
    $files = new Arquivo();
    $caminho = 'uploads';
	$objId = 0;
	$objAdmin ="";
	$nomeUsuario = "";
    if(!isset($_SESSION['user_id_intelinvest'])){
		$session->message("Você precisa estar autenticado para acessar essa página! ");
		redirect_to("../index.php");
	}else if(isset($_GET['intelinvest'])){
		doDecodifica($_GET['intelinvest']);
		if(isset($_GET['id_user_arquivos'])){
			$objId = $_GET['id_user_arquivos'];
		}
		if(isset($_GET['user_id_intelinvest'])){
			$objAdmin = $_GET['user_id_intelinvest'];
		}
	} else if(isset($_GET['usuario'])) {
		$objId = $_GET['usuario'];
	}

	if(isset($_GET['buscar'])){
		
	}

    // ações para o upload
	// Quando a ação for para remover anexo
		if(isset($_POST['acao'])){
			if ($_POST['acao'] == 'removeAnexo')
			{
			    // Recuperando nome do arquivo
			    $arquivo = $_POST['arquivo'];
			    $idArquivo = $_POST['idArquivo'];

			    // Verificando se o arquivo realmente existe
			    if (file_exists($caminho ."/".$objId."/". $arquivo) and !empty($arquivo))
			    	if($files->delete($idArquivo)){
			    		// Removendo arquivo
			        	unlink($caminho . "/".$objId."/".$arquivo);
			    	}
			        
			    // Finaliza a requisição
			    exit;
			}

		}


    $folder = $caminho . "/".$objId."/";
 ?>
 	<script>
		// Função para remover um anexo
	function removeAnexo(obj)
	{
	    // Recuperando nome do arquivo
	    var arquivo = $(obj).parent('li').attr('lang');
	    var idArquivo = $(obj).parent('li').attr('id');
	    var idU = $(obj).parent('li').attr('idU');
	    // Removendo arquivo do servidor
	    $.post("excluirArquivo.php", {acao: 'removeAnexo', arquivo: arquivo, idArquivo: idArquivo, idU: idU}, function() {
	        // Removendo elemento da página
	        $(obj).parent('li').remove();
	    });
	}
    </script>

<section>
 	<div class="row-fluid">
 		 <div class="listaArquivos">
 		 	<?php $urlLista = "lista_arquivos.php";
 		 	?>
 		 	<form action="<?php echo $urlLista; ?>" method="GET" accept-charse="utf-8">
 		 		<div class="row-fluid">
 		 			Selecione o usuário para listar os arquivos.
 		 		</div>
 		 		<div class="form-group row-fluid selectUser">
 			        <?php $usuario->criaSelectUsuario($objId); ?>
 			    </div>
 		 		<div class="listFileButton">
 		 			<button type="submit" name="buscar" class="btn btn-warning">Buscar Arquivos</button>	
 		 		</div>
 		 		 <?php if($objId){  $nomeUsuario = Usuario::retornaNome($objId); ?>
 		 		<div class="listagem row">
						<h2><?php echo "Usuário - ". $nomeUsuario; ?></h2>
				<?php } ?>
 					<div class="col-md-4 listFiles">

 			 		<?php if($objId != "") {
 				 		echo "<h3>Arquivos anexados</h3>";
 				 		echo "<div class='form-group uploadFile row-fluid'> 
 				 			<ul id='anexos' class='anexoList'>";
 				 			$result = Arquivo::find_files($objId);
 				 			$fileAnexadas = 0;
 				 			if(is_dir($folder)){ ?>
 				 				<div class="list-group" id="myList" role="tablist">
 				 			<?php foreach($result as $file){
 				 					$fileExist = $folder . $file->nome;
 				 					if(file_exists($fileExist)){ 
 				 							$urlExcluir = "excluirArquivo.php?acao=acao&id=".$file->id."&idU=".$objId."&arquivo=".$file->nome;
 				 						?>

 				 						<li lang="<?php echo $file->nome;?>" id="<?php echo $file->id; ?>" idU="<?php echo $objId;?>" class="verArquivo">	
											<span class="ver list-group-item list-group-item-action" id="list-invest-list" data-toggle="list" href="<?php echo '#list-invest' . $file->id; ?>" role="tab" aria-controls="invest">
 				 								<?php echo $file->nome . " - " . $file->tipo;?>
 				 							
 				 							</span>
											<a href="<?php echo $urlExcluir; ?>"><img src="image/remove.png" alt="Remover" class="remover"/></a>
 				 						</li>
 				 						<!-- echo "<li lang='". $file->nome ."' id='".$file->id."'>". $file->nome ."<img src='image/remove.png' alt='Remover' class='remover' onclick='removeAnexo(this)'"\/>" </li>"; -->
 				 						<?php $fileAnexadas++;
 				 					}
 				 				}?>
 				 				</div>
 				 				
 				 	<?php 	}
 				 		echo "</ul></div>";
 			 		} 
 			 		?>
 			 		</div>
 			 		<div class="col-md-8 boxArquivo">
 			 			<div class="arquivoPDF tab-content" id="nav-tabContent">
 			 			<?php
 			 			$result = Arquivo::find_files($objId);
 			 			$fileAnexadas = 0;
 			 			if(is_dir($folder)){
			 				foreach($result as $file){
			 					$fileExist = $folder . $file->nome;
			 					if(file_exists($fileExist)){ 
			 							$urlExcluir = "excluirArquivo.php?acao=acao&id=".$file->id."&idU=".$objId."&arquivo=".$file->nome;
			 						?>
									<div class="tab-pane fade" id="<?php echo 'list-invest' . $file->id; ?>" role="tabpanel" aria-labelledby="list-invest-list">
			 							<embed src="<?php echo $urlArquivos . $objId .'/'.$file->nome; ?>" width="760" height="900" type='application/pdf'>
			 						</div>
			 						<!-- <li lang="<?php echo $file->nome;?>" id="<?php echo $file->id; ?>" idU="<?php echo $objId;?>">	<?php echo $file->nome . " - " . $file->tipo;?>
									<a href="<?php echo $urlExcluir; ?>"><img src="image/remove.png" alt="Remover" class="remover"/></a>
			 						</li> -->
			 						<!-- echo "<li lang='". $file->nome ."' id='".$file->id."'>". $file->nome ."<img src='image/remove.png' alt='Remover' class='remover' onclick='removeAnexo(this)'"\/>" </li>"; -->
			 						<?php $fileAnexadas++;
			 					}
			 				}
			 				
			 			}
 			 			?>
 			 			</div>
 			 		</div>
 			 	</div>
 		 	</form>
 		 </div>
 		
 	</div>
 </section>
	

 <?php

    include "footer.php";

?>