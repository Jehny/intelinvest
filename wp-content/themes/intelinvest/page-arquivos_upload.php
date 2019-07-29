<?php
include "layout/header.php";
include "layout/menu2.php";

 $args = array(
	'post_title' => 'arquivos_upload',
	'post_type' => 'page',
	'post_status' => 'publish'
); 
$pages = get_pages($args); 

// foreach ( $pages as $page ) {
//   	$option = '<option value="' . get_page_link( $page->ID ) . '">';
// 	$option .= $page->post_title;
// 	$option .= '</option>';
// 	echo $option;

//     echo "</br>";
//     echo "Content";

//     echo  $page->post_content;
//   }

$page = get_page_by_title('arquivos_upload');
 echo  $page->post_content;

// Flag que indica se há erro ou não
$erro = null;
// Quando enviado o formulário
if (isset($_FILES['arquivo']))
{
    // Configurações
    $extensoes = array(".doc", ".txt", ".pdf", ".docx", ".jpg");
    $caminho = bloginfo('template_url')."/uploads/";
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
        if (!move_uploaded_file($temp, $caminho . $nomeAleatorio))
            $erro = 'Não foi possível anexar o arquivo';
    }
}


// Quando a ação for para remover anexo
if (isset($_POST['acao']) == 'removeAnexo')
{
    // Recuperando nome do arquivo
    $arquivo = $_POST['arquivo'];
    // Caminho dos uploads
    $caminho = 'uploads/';
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
    echo 'Arquivos Enviados: ';
    echo '<pre>';
        print_r($_POST['anexos']);
    echo '</pre>';
}
?>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Upload dinâmico com jQuery/PHP</title> -->

<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery-2.0.3.min.js"></script>

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
    list-style-image: url(img/file.png);
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
    $.post("upload_arquivos.php", {acao: 'removeAnexo', arquivo: arquivo}, function() {
        // Removendo elemento da página
        $(obj).parent('li').remove();
    });
}
    </script>

     <script type="text/javascript">
    $(function($) {
        // Definindo página pai
        var pai = window.parent.document;
        
        <?php if (isset($erro)): // Se houver algum erro ?>
        
            // Exibimos o erro
            alert('<?php echo $erro ?>');
            
        <?php elseif (isset($nome)): // Se não houver erro e o arquivo foi enviado ?>
        
            // Adicionamos um item na lista (ul) que tem ID igual a "anexos"
            $('#anexos', pai).append('<li lang="<?php echo $nomeAleatorio ?>"><?php echo $nome ?> <img src="<?php bloginfo('template_url'); ?>/img/remove.png" alt="Remover" class="remover" onclick="removeAnexo(this)" \/> </li>');
            
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

<h1>Upload dinâmico com jQuery/PHP</h1>

<ul id="anexos"></ul>
<!-- <iframe src="upload.php" frameborder="0" scrolling="no"></iframe> -->
<?php include "upload.php"; ?>

<form id="upload" action="upload_arquivos.php" method="post">
    <input type="submit" name="enviar" value="Enviar" />
</form>
<?php
include "layout/footer.php";
?>


