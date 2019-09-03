<?php
    include "database.php";
    include "usuario.php";
    include "perfil.php";
    include "arquivo.php";
    include "header.php";
    include "menu2.php";

    $usuario = new Usuario();
    
    $caminho = 'uploads';
    
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
        $user = Usuario::find_by_id($idUser);
        $id_perfil = $user->id_perfil;
        $dt_cad = $usuario->pegaDataAtual();
        $novoCaminho = $caminho . '/'.$idUser; 
        $usuario->criarNovaPasta($caminho, $idUser);
        $usuario->moverArquivo($arquivo, $caminho, $novoCaminho);

         // fazer inserção no banco aqui
        $files = new Arquivo();
        $files->pasta = $novoCaminho;
        $files->nome = $arquivo;
        $files->id_user = $idUser;
        $files->id_perfil = $id_perfil;
        $files->dt_cad = $dt_cad;
         
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
<title>Upload dinâmico com jQuery/PHP</title>

<script type="text/javascript" src="js/jquery.js"></script>

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
    $.post("index.php", {acao: 'removeAnexo', arquivo: arquivo}, function() {
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

    <h1>Upload arquivos</h1>
     <iframe src="upload.php" frameborder="0" scrolling="no"></iframe>
    <form id="upload" action="index.php" method="post">
        <div class="form-group row-fluid selectUser">
             <?php $usuario->criaSelectUsuario(); ?>
        </div>
        <input type="submit" name="enviar" value="Enviar" class="btn btn-warning" />
    </form>

     <div class="row-fluid fileAnexos">
        <ul id="anexos"></ul>   
    </div>
   
</section>
</body>
</html>

<?php

    include "footer.php";

?>