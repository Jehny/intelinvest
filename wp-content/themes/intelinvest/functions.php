<?php
	register_nav_menu( 'main-menu', __( 'Main Menu' ) );

	add_theme_support( 'post-thumbnails' );

	add_action( 'init', 'banners_post_type' );
	add_action( 'init', 'sobre_post_type' );
	add_action( 'init', 'servicos_post_type' );
	add_action( 'init', 'investimentos_post_type' );
	add_action( 'init', 'perfil_post_type' );
	add_action( 'init', 'como_funciona_post_type' );
	add_action( 'init', 'consultoria_post_type' );

	add_post_type_support('banners', 'thumbnail');
	add_post_type_support('sobre', array('thumbnail', 'excerpt', 'custom-fields'));
	add_post_type_support('servicos', array('thumbnail', 'excerpt', 'custom-fields'));
	add_post_type_support('investimentos', array('thumbnail', 'excerpt'));
	add_post_type_support('perfil', array('thumbnail', 'excerpt'));
	add_post_type_support('como_funciona', array('thumbnail', 'excerpt'));
	add_post_type_support('consultoria', array('thumbnail', 'excerpt'));

	function consultoria_post_type() {
		register_post_type( 'consultoria',
				array(
						'labels' => array(
								'name' => __( 'Consultoria' ),
								'singular_name' => __( 'Consultoria' )
						),
						'public' => true,
						'has_archive' => true,
				)
		);
	}

	function como_funciona_post_type() {
		register_post_type( 'como_funciona',
				array(
						'labels' => array(
								'name' => __( 'Como Funciona' ),
								'singular_name' => __( 'Como Funciona' )
						),
						'public' => true,
						'has_archive' => true,
				)
		);
	}

	function perfil_post_type() {
		register_post_type( 'perfil',
				array(
						'labels' => array(
								'name' => __( 'Perfil' ),
								'singular_name' => __( 'Perfil' )
						),
						'public' => true,
						'has_archive' => true,
				)
		);
	}

	function banners_post_type() {
		register_post_type( 'banners',
				array(
						'labels' => array(
								'name' => __( 'Banners' ),
								'singular_name' => __( 'Banner' )
						),
						'public' => true,
						'has_archive' => true,
				)
		);
	}

	function sobre_post_type() {
		register_post_type( 'sobre',
				array(
						'labels' => array(
								'name' => __( 'Sobre' ),
								'singular_name' => __( 'Sobre' )
						),
						'public' => true,
						'has_archive' => true,
				)
		);
	}

	function servicos_post_type() {
		register_post_type( 'servicos',
				array(
						'labels' => array(
								'name' => __( 'Serviços' ),
								'singular_name' => __( 'Serviços' )
						),
						'public' => true,
						'has_archive' => true,
				)
		);
	}

	function investimentos_post_type() {
		register_post_type( 'investimentos',
				array(
						'labels' => array(
								'name' => __( 'Investimentos' ),
								'singular_name' => __( 'Investimentos' )
						),
						'public' => true,
						'has_archive' => true,
				)
		);
	}


	// Custom WordPress Login Logo
	function my_login_logo() { ?>
		<style>
		   body.login div#login h1 a {
		        background: url('wp-content/themes/intelinvest/img/logo_login.png')no-repeat;
		        height: 70px;
		        width: 323px;
		        
		   }
	 	</style>
<?php }
	add_action( 'login_enqueue_scripts', 'my_login_logo' );

	//Link na tela de login para a página inicial
	function my_login_logo_url() {
		return get_bloginfo( 'url' );
	}
	add_filter( 'login_headerurl', 'my_login_logo_url' );

	function my_login_logo_url_title() {
		return 'Intelinvest';
	}
	add_filter( 'login_headertitle', 'my_login_logo_url_title' );

	//Custom dashboard logo
	add_action('admin_head', 'my_custom_logo');
	function my_custom_logo() {
		echo '<style>
	 			#wpadminbar>#wp-toolbar>#wp-admin-bar-root-default>#wp-admin-bar-wp-logo .ab-icon {
	 				background: url('.get_bloginfo('template_directory').'/img/logo_tabless.png) no-repeat left 6px !important;
					height: 20px;
					width: 20px;
					font-family: normal !important;
					font-family: normal !important;
					font-weight: normal !important;
				}
				#wpadminbar #wp-admin-bar-wp-logo>.ab-item .ab-icon:before {
					content: none;
				}
			</style>';
	};

	// Retorna a data atual
	function pegaDataAtual(){
		$data = date('Y-m-d');
		return $data;
	}

	function pegaPefil(){
		global $wpdb;
		return $wpdb->get_results( 'SELECT * FROM wp_perfil');
	}

	function criptSenha($senha){
		return sha1($senha);
	}

	// Redirecionamento de páginas
	function redirect_to( $location = NULL ) {
		if($location != NUll) {
			header("Location: {$location}");
			exit;
		}
	}

	function gerarSenha(){
		$alfabeto = "abcdefghijklmnopqrstuvwxyz0123456789";
		$tamanho_senha = rand(6,10);
		$senha = "";
		for($i=0;$i<$tamanho_senha;$i++) {
		  $senha .= $alfabeto{rand(0,strlen($alfabeto)-1)};
		}
		return $senha;
	}

	// Retorna as mensagens, usada em conjunto com a classe Session.
	function output_message( $message = "" ) {
		if(!empty($message)) {
			return "<div id='messageSite'><div class='mainBody'>{$message} <a href='' id='closeMessage'>x</a></div></div>";
		} else {
			return "";
		}
	}
	function doCodifica($string)
	{
	    return $limpa = urlencode(base64_encode(gzcompress($string)));
	}

	function doDecodifica($string)
	{
	        $descomprime = @gzuncompress( base64_decode( $string ) );
	        if( !$descomprime )
	        {
	                exit("A URL informada é inválida!");
	        }
	        $html = htmlentities( $descomprime );
	        $url = parse_url($html);
	        $parametros = explode(";", $url['query']);
			$j = 1;
	        for($i=0;$i<count($parametros);$i++)
	        {
	                $valor = explode("=", trim( urldecode( strip_tags( $parametros[$i] ) ) ) );
	                if($valor[1] != ""){
						$_GET[ $valor[0] ] = $valor[1];
	                }


	        }
	       // echo count($parametros);
	}

	function logout() {
		echo "logout";
		$_SESSION['logout'] = "logout";
		unset($_SESSION['user_id_intelinvest']);
		unset($this->user_id);
		$this->logged_in = false;
		return true;
	}

	function criarNovaPasta($caminho, $pasta){
	//;//, 0700 colocar quando for no linux
		$new = $caminho."/".$pasta;
		if(!file_exists($caminho."/".$pasta)){
			mkdir ($caminho."/".$pasta);
			return $new;
		}else{
			//echo "Não foi possível criar uma nova pasta!";
			return $new;
		}
	}

	function moverArquivo($arquivo, $caminho, $novoCaminho ){
		rename($caminho."/".$arquivo, $novoCaminho."/".$arquivo);

	}

	function excluirArquivo($caminho, $idEstab, $arquivo){
		if (file_exists($caminho ."/". $idEstab . "/" . $arquivo) and !empty($arquivo)){
			// Removendo arquivo
	        unlink($caminho . "/". $idEstab . "/" . $arquivo);
	        return true;
		}else{
			return false;
		}
	}

	function excluirArquivoSemSubPasta($caminho, $arquivo){
		if (file_exists($caminho ."/". $arquivo) and !empty($arquivo)){
			// Removendo arquivo
			unlink($caminho . "/" . $arquivo);
			return true;
		}else{
			return false;
		}

	}
	
	function limparFormatacaoContato($campo){
		$campoLimpo = str_replace("(", "", $campo);
		$campoLimpo = str_replace(")", "", $campoLimpo);
		$campoLimpo = str_replace("-", "", $campoLimpo);

	   return $campoLimpo;

	}

	function formatarCPF($campo){
		$campoLimpo = str_replace(".", "", $campo);
		$campoLimpo = str_replace("-", "", $campoLimpo);
	   return $campoLimpo;
	}

	function limpar($campo){
		$campoLimpo = str_replace("(", "", $campo);
		$campoLimpo = str_replace(")", "", $campoLimpo);
		$campoLimpo = str_replace("-", "", $campoLimpo);
		$campoLimpo = str_replace(" ", "", $campoLimpo);
		$campoLimpo = trim($campoLimpo);

	   return $campoLimpo;
	}

	function limparFormatacao($campo){
		$campoLimpo = str_replace("(", "", $campo);
		$campoLimpo = str_replace(")", "", $campoLimpo);
		$campoLimpo = str_replace("-", "", $campoLimpo);
		$campoLimpo = str_replace(".", "", $campoLimpo);
		$campoLimpo = str_replace("/", "", $campoLimpo);
		$campoLimpo = str_replace(":", "", $campoLimpo);
	   return $campoLimpo;

	}

	function validaCpfExiste($cpf = ""){

		global $wpdb;
		$sql  = "SELECT * FROM wp_users_system";
		$sql .= " WHERE cpf = '{$cpf}'";

		$result = $wpdb->get_row($sql);

		return !empty($result) ? true : false;

	}

	function validaCpfExisteAtualizacao($cpf = ""){

		global $wpdb;
		$sql  = "SELECT * FROM wp_users_system";
		$sql .= " WHERE cpf = '{$cpf}'";

		$result = $wpdb->get_row($sql);

		if(!empty($result) && ($result->cpf == $cpf)){
			return false;
		} else if(!empty($result) && ($result->cpf != $cpf)) {
			return true;
		}

	}

	//Função para validar se o email já está cadastrado na base de dados
	function validaEmail($email){
		global $wpdb;

		$sql  = "SELECT * FROM wp_users_system";
		$sql .= " WHERE email = '{$email}'";
		$sql .= " LIMIT 1";
		$result = $wpdb->get_row($sql);
		return !empty($result) ? true : false;

	}

	function validaEmailAtualizacao($id = 0, $email = ""){
		global $wpdb;

		$sql  = "SELECT * FROM wp_users_system";
		$sql .= " WHERE id = '{$id}'";
		
		$result = $wpdb->get_row($sql);
		if(!empty($result) && ($result->email == $email)){
			return false;	
		} else if (!empty($result) && ($result->email != $email)){
			return true;
		}

	}



?>
