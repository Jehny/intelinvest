<?php 

// Redirecionamento de páginas
	function redirect_to( $location = NULL ) {
		if($location != NUll) {
			header("Location: {$location}");
			exit;
		}
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
	function limpar($campo){
		$campoLimpo = str_replace("(", "", $campo);
		$campoLimpo = str_replace(")", "", $campoLimpo);
		$campoLimpo = str_replace("-", "", $campoLimpo);
		$campoLimpo = str_replace(" ", "", $campoLimpo);
		$campoLimpo = trim($campoLimpo);

	   return $campoLimpo;

	}

?>