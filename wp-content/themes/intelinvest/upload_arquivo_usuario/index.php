<?php
    include "database.php";
    include "usuario.php";
    include "perfil.php";
    include "arquivo.php";
    include "header.php";
    include "menu2.php";

    $usuario = new Usuario();
    
    $caminho = 'uploads';
    $caminhoUser = 'uploadsUser';
    $caminho_perfil = 'perfil_uploads';
    $usuario = Usuario::find_by_id($_SESSION['user_id_intelinvest']);
    
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

if(isset($_POST['enviarUser'])){
    if(isset($_POST['anexos'])){
        $arquivo = $_POST['anexos'][0];
        $idUser = $_POST['userid'];
        $id_perfil = $_POST['perfil'];
        $dt_cad = $usuario->pegaDataAtual();
        $tipo = 'User';
        
        $files = new Arquivo();

        // fazer inserção no banco aqui para usuário e tipo
        $novoCaminho = $caminhoUser . '/'.$idUser;
        $usuario->criarNovaPasta($caminhoUser, $idUser);
        $usuario->moverArquivo($arquivo, $caminho, $novoCaminho); 
        $files->pasta = $novoCaminho;
        $files->nome = $arquivo;
        $files->id_user = $idUser;
        $files->id_perfil = $id_perfil;
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

// Se enviado o formulário
if (isset($_POST['enviar']))
{
    if(isset($_POST['anexos'])){
        $arquivo = $_POST['anexos'][0];
        $idUser = $_POST['usuario'];
        $user = Usuario::find_by_id($idUser);
        $id_perfil = $user->id_perfil;
        $dt_cad = $usuario->pegaDataAtual();
        $tipo = $_POST['tipoArquivo'];
       
        $tipo_perfil = $_POST['tipoPerfil'];

        $files = new Arquivo();

        if($tipo_perfil == '0'){
             // fazer inserção no banco aqui para usuário e tipo
            $novoCaminho = $caminho . '/'.$idUser;
            $usuario->criarNovaPasta($caminho, $idUser);
            $usuario->moverArquivo($arquivo, $caminho, $novoCaminho); 
            $files->pasta = $novoCaminho;
            $files->nome = $arquivo;
            $files->id_user = 0;
            $files->id_perfil = $id_perfil;
            $files->dt_cad = $dt_cad;
            $files->tipo = $tipo;
        } else {
            //fazer inserção para perfil
            $novoCaminho = $caminho_perfil . '/'.$tipo_perfil;
            $usuario->criarNovaPasta($caminho_perfil, $tipo_perfil);
            $usuario->moverArquivo($arquivo, $caminho, $novoCaminho); 
            $files->pasta = $novoCaminho;
            $files->nome = $arquivo;
            $files->id_user = "";
            $files->id_perfil = $tipo_perfil;
            $files->dt_cad = $dt_cad;
            $files->tipo = "Avisos";
        }         
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
<title>Upload arquivos</title>

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
    width: auto;
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


<div class="bodyFileUpload">
    <?php if(isset($message)){
                echo $message;
                } ?>

    <div class="row-fluid">
         <h1>Upload arquivos</h1>
         <iframe src="upload.php" frameborder="0" scrolling="no"></iframe>
         <form id="upload" action="index.php" method="post">
             <div class="form-group row-fluid selectUser">
                 <?php if(Usuario::isAdministrador($_SESSION['user_id_intelinvest'])) { ?>
                 <div class="col-xs-12 col-xs-12 col-md-4">
                     <p>Usuário</p>
                      <?php $usuario->criaSelectUsuario(); ?>
                 </div>
                 <div class="col-xs-12 col-xs-12 col-md-4">
                     <p>Tipo</p>
                     <select name="tipoArquivo" id="tipoArquivo" class="form-control">
                         <option value="Avisos">Avisos</option>
                         <option value="Informativos">Informativos</option>
                         <option value="Analises">Análises</option>
                         <option value="Investimentos">Investimentos</option>
                         <option value="Imposto_de_renda">Imposto de renda</option>
                     </select>
                 </div>
                  <div class="col-xs-12 col-xs-12 col-md-4">
                     <p>Perfil</p>
                     <?php $perfis = Perfil::retornaPerfilSemAdmin(); ?>
                     <select name="tipoPerfil" id="tipoPerfil" class="form-control">
                         <option value="0">Selecione um perfil</option>
                         <?php foreach ($perfis as $key) { ?>
                         <option value="<?php echo $key->id; ?>"><?php echo $key->nome; ?></option>
                         <?php } ?>
                     </select>
                  </div>
                 <?php } ?>
             </div>
             <input type="hidden" name="userid" value="<?php echo $usuario->id; ?>"/>
            <input type="hidden" name="perfil" value="<?php echo $usuario->id_perfil; ?>"/>
             <?php if(Usuario::isAdministrador($_SESSION['user_id_intelinvest'])) { ?>
            <div class="btnEnviar">
                <p> <button type="submit" name="enviar" value="Enviar" class="btn btn-warning">Enviar</button></p>
            </div>
            
        <?php } else { ?>
            <div class="btnEnviar">
                <p> <button type="submit" name="enviarUser" value="Enviar" class="btn btn-warning">Enviar</button></p>
            </div>
         <?php } ?>
         </form>
    </div>

    <div class="row-fluid fileAnexos">
        <div class="col-xs-12 col-xm-12 col-md-12">
            <ul id="anexos"></ul> 
        </div>  
    </div>
   
</div>
<?php

    include "footer.php";

?>