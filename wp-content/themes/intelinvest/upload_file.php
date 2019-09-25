<?php

$caminho = 'uploads_user';
$caminho_perfil = 'upload_arquivo_usuario/perfil_uploads';

// Flag que indica se há erro ou não
$erro = null;
// Quando enviado o formulário
if (isset($_FILES['arquivo']))
{
    // Configurações
    $extensoes = array(".doc", ".txt", ".pdf", ".docx", ".jpg");
    $caminho = "uploads_user/";
    // Recuperando informações do arquivo
    $nome = $_FILES['arquivo']['name'];
    $temp = $_FILES['arquivo']['tmp_name'];
    // Verifica se a extensão é permitida
    if (!in_array(strtolower(strrchr($nome, ".")), $extensoes)) {
		$erro = 'Extensão inválida';
	}
    // Se não houver erro
    if (!$erro) {
        // Gerando um nome aleatório para a imagem
        $nomeAleatorio = md5(uniqid(time())) . strrchr($nome, ".");
        // Movendo arquivo para servidor
        if (!move_uploaded_file($temp, $caminho . $nome))
            $erro = 'Não foi possível anexar o arquivo';
    }
}

// Quando a ação for para remover anexo
if (isset($_POST['acao']) == 'removeAnexo')
{
    // Recuperando nome do arquivo
    $arquivo = $_POST['arquivo'];
    // Caminho dos uploads
    // $caminho = 'uploads/';
    // Verificando se o arquivo realmente existe
    if (file_exists($caminho . $arquivo) and !empty($arquivo))
        // Removendo arquivo
        unlink($caminho . $arquivo);
    // Finaliza a requisição
    exit;
}

// Se enviado o formulário
if (isset($_POST['enviar']))
{
    if(isset($_POST['anexos'])){
        $arquivo = $_POST['anexos'][0];
        $idUser = $_POST['usuario'];
        $perfil = $_POST['perfil']
        $dt_cad = $usuario->pegaDataAtual();
        $tipo = 'User';
       
        $files = new Arquivo();

         // fazer inserção no banco aqui para usuário e tipo
        $novoCaminho = $caminho . '/'.$idUser;
        $usuario->criarNovaPasta($caminho, $idUser);
        $usuario->moverArquivo($arquivo, $caminho, $novoCaminho); 
        $files->pasta = $novoCaminho;
        $files->nome = $arquivo;
        $files->id_user = $idUser;
        $files->id_perfil = $perfil;
        $files->dt_cad = $dt_cad;
        $files->tipo = $tipo;
                 
        if($files->save()) {
           $message = "<div class='sucesso alert alert-info'>
                        <button type='button' class='close' data-dismiss='alert'>×</button>
                        <h4>Sucesso!</h4>
                        <p>Arquivo enviado com sucesso! </p>
                        </div>";
        }
    } else {
         $message = "<div class='sucesso alert alert-danger'>
                        <button type='button' class='close' data-dismiss='alert'>×</button>
                        <h4>Ooops!</h4>
                        <p>Algum arquivo deve ser anexado!</p>
                        </div>";
    }


}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Upload de arquivo</title>
    
    <style type="text/css">
        body {
            font-family: "Trebuchet MS";
            font-size: 14px;    
        }

        iframe {
            border: 0;
            overflow: hidden;
            margin: 0;
            height: 60px;
            width: 450px;
        }

        #anexos {
            list-style-image: url(image/file.png);
        }

        img.remover {
            cursor: pointer;
            vertical-align: bottom;
        }
    </style>
    
    <script type="text/javascript">
        $(function($) {
            // Definindo página pai
            var pai = window.parent.document;
            
            <?php if (isset($erro)): // Se houver algum erro ?>
            
                // Exibimos o erro
                alert('<?php echo $erro ?>');
                
            <?php elseif (isset($nome)): // Se não houver erro e o arquivo foi enviado ?>
            
                // Adicionamos um item na lista (ul) que tem ID igual a "anexos"
                $('#anexos', pai).append('<li lang="<?php echo $nome ?>"><?php echo $nome ?> <img src="image/remove.png" alt="Remover" class="remover" onclick="removeAnexo(this)" \/> </li>');
                
            <?php endif ?>
            
            // Quando enviado o arquivo
        	$("#arquivo").change(function() {	    
                // Se o arquivo foi selecionado
                if (this.value != "")
                {    
                    // Exibimos o loder
                    $("#status").show();
                    // Enviamos o formulário
                    $("#upload").submit();
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function($) {
            // Quando enviado o formulário
            $("#upload").submit(function() {
                // Passando por cada anexo
                $("#anexos").find("li").each(function() {
                    // Recuperando nome do arquivo
                    var arquivo = $(this).attr('lang');
                    // Criando campo oculto com o nome do arquivo
                    $("#upload").prepend('<input type="hidden" name="anexos[]" value="' + arquivo + '" \/>');

                }); 
            });
        });
            
        // Função para remover um anexo
        function removeAnexo(obj)
        {
            // Recuperando nome do arquivo
            var arquivo = $(obj).parent('li').attr('lang');
            // Removendo arquivo do servidor
            $.post("upload_file.php", {acao: 'removeAnexo', arquivo: arquivo}, function() {
                // Removendo elemento da página
                $(obj).parent('li').remove();
            });
        }
    </script>
</head>

<body>
<section class="bodyFileUpload">
    <?php if(isset($message)){
                echo $message;
                } ?>
<form id="upload" action="upload_file.php" method="post" enctype="multipart/form-data">
    <div class="form-group uploadFile row-fluid">
        <label>Arquivo: </label> <span id="status" style="display: none;"><img src="image/loader.gif" alt="Enviando..." /></span> <br />
        <input type="file" name="arquivo" id="arquivo" />
    </div> 
    <input type="hidden" name="usuario" value="<?php echo $usuario->id; ?>"> 
    <input type="hidden" name="perfil" value="<?php echo $perfil->id; ?>"> 
    <div class="btnEnviar">
       <p> <button type="submit" name="enviar" value="Enviar" class="btn btn-warning">Enviar</button></p>
   </div>  
</form>
 
</body>
</html>