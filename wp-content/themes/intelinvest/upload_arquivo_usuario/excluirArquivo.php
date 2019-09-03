<?php
include "database.php";
include "session.php";
include "usuario.php";
include "arquivo.php";
include "functions.php";
include "perfil.php";
$caminho = 'uploads';
$files = new Arquivo();
$usuario =  new Usuario();
$excluidos = 'uploads_excluidos';
if(isset($_GET['acao'])){
	
	    // Recuperando nome do arquivo
	    $arquivo = $_GET['arquivo'];
	    $idArquivo = $_GET['id'];
	    $objId = $_GET['idU'];

	    // Verificando se o arquivo realmente existe
	    if (file_exists($caminho ."/".$objId."/". $arquivo) and !empty($arquivo)) {
	    	if($files->delete($idArquivo)){
	    		// $usuario->criarNovaPasta($excluidos, $objId);
	    		// $novoCaminho = $excluidos ."/". $objId;
    			// $usuario->moverArquivo($arquivo, $caminho, $novoCaminho);
    			unlink($caminho . "/".$objId."/".$arquivo);
	    		// Removendo arquivo
	        	
	        	redirect_to("lista_arquivos.php?usuario=".$objId);
	    	}
	        
	    // Finaliza a requisição
	    }
	

}

?>