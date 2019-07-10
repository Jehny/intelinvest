<?php

require_once(LIB_PATH.DS.'database.php');

class Perfil {

	protected static $table_name = "perfil";
	protected static $db_fields = array('id', 'nome');
	public $id;
	public $nome;

	public static function retornaNome($id = 0){
		$object = self::find_by_id($id);
		return $object->nome;
	}

	public static function retornaId($nome = ""){
		global $database;

		$sql =  "SELECT * FROM " . self::$table_name . " WHERE nome = '".$nome."' LIMIT 1";
		$object_set = self::find_by_sql($sql);
		$object = array_shift($object_set);

		return $object->id;
	}

	public static function criaSelect($id = 0){
		$nome = "id_perfil";
		$nomeId = "perfil";
		$result_array = self::find_all();
		$html  = "<select name='{$nome}' id='{$nomeId}'>";
		$html .= "<option value='{$id}'>Selecione um Perfil</option>";
		foreach($result_array as $perfil){
			$nomePerfil = alteraNomeDePerfilParaAtual($perfil->nome);
			if($perfil->id == $id){
				$html .= "<option value='{$perfil->id}' selected='selected'>{$nomePerfil}</option>";
			} else {
				$html .= "<option value='{$perfil->id}'>{$nomePerfil}</option>";
			}
		}
		$html .= "</select>";

		echo $html;
	}

	public static function criaSelectCliente($id = 0){
		$nome = "id_perfil";
		$nomeId = "perfil";
		$result_array = self::find_profile_client();
		$html  = "<select name='{$nome}' id='{$nomeId}'>";
		$html .= "<option value='{$id}'>Selecione um Perfil</option>";
		foreach($result_array as $perfil){
			$nomePerfil = alteraNomeDePerfilParaAtual($perfil->nome);
			
			if($perfil->id == 2 || $id == 2){
				$html .= "<option value='4' selected='selected'>Plano Certo</option>";
			}else{
			
				if($perfil->id == $id){
					$html .= "<option value='{$perfil->id}' selected='selected'>{$nomePerfil}</option>";
	
				} else {
					$html .= "<option value='{$perfil->id}'>{$nomePerfil}</option>";
	
				}
			}
		}
		$html .= "</select>";

		echo $html;

	}

	/**
	 * Método que cria um select para alteração de perfil de um estabelemcimento.
	 * Este método não apresenta a opção do perfil atual do estabelecimento.
	 */
	public static function criarSelectAlterarPerfil($id = 0){
		$nome = "id_perfil";
		$nomeId = "perfil";
		$result_array = self::find_profile_client();
		$html  = "<select name='{$nome}' id='{$nomeId}'>";
		$html .= "<option value='0'>Selecione um Perfil</option>";
		foreach($result_array as $perfil){
			$nomePerfil = alteraNomeDePerfilParaAtual($perfil->nome);
			if($perfil->id == 2 || $id == 2){
				$html .= "<option value='4' selected='selected'>Plano Certo</option>";
			}else{
				if($perfil->id == $id){
	//					$html .= "<option value='{$perfil->id}' selected='selected'>{$perfil->nome}</option>";
				} else {
					$html .= "<option value='{$perfil->id}'>{$nomePerfil}</option>";
	
				}
			}
		}
		$html .= "</select>";

		echo $html;

	}

	/**
	 * Método que cria um select para alteração de perfil de um estabelemcimento.
	 * Este método não apresenta as opções de perfil não contratadas.
	 */
	public static function criarSelectAlterarPerfilContratado($id_usuario = 0){
		$qntPrimeA =  UsuarioPlano::qntPorPerfil($id_usuario, 3);
		$qntPrime =  UsuarioPlano::qntPorPerfil($id_usuario, 1);
		$qntNormalA =  UsuarioPlano::qntPorPerfil($id_usuario, 2);
		$qntNormal =  UsuarioPlano::qntPorPerfil($id_usuario, 4);

		$objEstabPrimeA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 3);
		$objEstabPrime = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 1);
		$objEstabNormalA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 2);
		$objEstabNormal = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 4);

		$nome = "id_perfil";
		$nomeId = "perfil";
		$result_array = self::find_profile_client();
		$html  = "<select name='{$nome}' id='{$nomeId}'>";
		$html .= "<option value='0'>Selecione um Perfil</option>";

		if($qntPrimeA > count($objEstabPrimeA)){
			$html .= "<option value='3'>Plano Ultra Certo</option>";
		}

		if($qntPrime > count($objEstabPrime)){
			$html .= "<option value='1'>Plano Super Certo</option>";
		}

		if($qntNormalA > count($objEstabNormalA)){
			$html .= "<option value='4'>Plano Certo</option>";
		}

		if($qntNormal > count($objEstabNormal) || $qntNormalA > count($objEstabNormalA)){
			$html .= "<option value='4'>Plano Certo</option>";
		}

		$html .= "</select>";

		echo $html;

	}
	
	public static function criarSelectAlterarPerfilContratadoPefil($id_usuario = 0, $perfil = 0){
		$qntPrimeA =  UsuarioPlano::qntPorPerfil($id_usuario, 3);
		$qntPrime =  UsuarioPlano::qntPorPerfil($id_usuario, 1);
		$qntNormalA =  UsuarioPlano::qntPorPerfil($id_usuario, 2);
		$qntNormal =  UsuarioPlano::qntPorPerfil($id_usuario, 4);
	
		$objEstabPrimeA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 3);
		$objEstabPrime = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 1);
		$objEstabNormalA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 2);
		$objEstabNormal = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 4);
	
		$nome = "id_perfil";
		$nomeId = "perfil";
		$result_array = self::find_profile_client();
		$html  = "<select name='{$nome}' id='{$nomeId}'>";
		
		$selected1 = "";
		$selected3 = "";
		$selected4 = "";
		
		if($perfil == 1){
			$selected1 = "selected = selected"; 
		}else if($perfil == 3){
			$selected3 = "selected = selected";
		} else {
			$selected4 = "selected = selected";
		} 
			
		
		$html .= "<option value='0'>Selecione um Perfil</option>";
		if($qntPrimeA > count($objEstabPrimeA)){
			
			$html .= "<option value='3' ".$selected3." >Plano Ultra Certo</option>";
		}
	
		if($qntPrime > count($objEstabPrime)){
			$html .= "<option value='1' ".$selected1.">Plano Super Certo</option>";
		}
	
		if($qntNormalA > count($objEstabNormalA)){
			$html .= "<option value='4' ".$selected4.">Plano Certo</option>";
		}
	
		if($qntNormal > count($objEstabNormal) || $qntNormalA > count($objEstabNormalA)){
			$html .= "<option value='4' ".$selected4.">Plano Certo</option>";
		}
	
		$html .= "</select>";
	
		echo $html;
	
	}
	

	/**
	 * Método que cria um select para alteração de perfil de um estabelemcimento.
	 * Este método não apresenta as opções de perfil não contratadas.
	 * Um campo hidden com o ID apelido do Estab eh adicionado a cada select.
	 */
	public static function criarSelectContinuarCliente($id_usuario = 0, $apelido = "", $i = 0){
		$qntPrimeA =  UsuarioPlano::qntPorPerfil($id_usuario, 3);
		$qntPrime =  UsuarioPlano::qntPorPerfil($id_usuario, 1);
		$qntNormalA =  UsuarioPlano::qntPorPerfil($id_usuario, 2);
		$qntNormal =  UsuarioPlano::qntPorPerfil($id_usuario, 4);
		
		$objEstabPrimeA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 3);
		$objEstabPrime = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 1);
		$objEstabNormalA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 2);
		$objEstabNormal = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 4);

		$nome = "perfil";
		$nomeId = "perfilIn";
		
		$result_array = self::find_profile_client();
		$html  = "<select name='".$nome . $i ."'>";
		$html .= "<option value='8'>Sem Perfil</option>";

		if($qntPrimeA > count($objEstabPrimeA)){
			$html .= "<option value='3'>Plano Ultra Certo</option>";
		}

		if($qntPrime > count($objEstabPrime)){
			$html .= "<option value='1'>Plano Super Certo</option>";
		}

		if($qntNormalA > count($objEstabNormalA)){
			$html .= "<option value='4'>Plano Certo</option>";
		}

		if($qntNormal > count($objEstabNormal)){
			$html .= "<option value='4'>Plano Certo</option>";
		}
		$html .= "<input type='hidden' name='".$nomeId. $i."' value='{$apelido}'/>";
		$html .= "</select>";
		echo $html;

	}


	/**
	 * Método que cria um select para alteração de perfil de um estabelemcimento.
	 * Este método não apresenta as opções de perfil não contratadas.
	 */
	public static function criarSelectAlterarPerfilEdit($id_usuario = 0, $id_perfil = 0){
		$qntPrimeA =  UsuarioPlano::qntPorPerfil($id_usuario, 3);
		$qntPrime =  UsuarioPlano::qntPorPerfil($id_usuario, 1);
		$qntNormalA =  UsuarioPlano::qntPorPerfil($id_usuario, 2);
		$qntNormal =  UsuarioPlano::qntPorPerfil($id_usuario, 4);

		$objEstabPrimeA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 3);
		$objEstabPrime = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 1);
		$objEstabNormalA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 2);
		$objEstabNormal = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 4);

		$nome = "id_perfil";
		$nomeId = "perfil";
		
		$result_array = self::find_profile_client();
		$html  = "<select name='{$nome}' id='{$nomeId}'>";
		
		if($id_perfil == 2 ){
			$id_perfil = 4;
		}
		
		if($id_perfil == 10){
			$html .= "<option value='0'>Selecione um Perfil</option>";
		}else{
			$html .= "<option value='" . $id_perfil ."' selected='selected' >". alteraNomeDePerfilParaAtual(self::retornaNome($id_perfil))."</option>";
		}
		
		if($qntPrimeA > count($objEstabPrimeA)){
			if($id_perfil == 3){
				$html .= "<option value='3' selected='selected' >Plano Ultra Certo</option>";
			}else{
				$html .= "<option value='3'>Plano Ultra Certo</option>";
			}

		}

		if($qntPrime > count($objEstabPrime)){
			if($id_perfil == 1){
				$html .= "<option value='1' selected='selected' >Plano Super Certo</option>";
			}else{
				$html .= "<option value='1'>Plano Super Certo</option>";
			}

		}

		if($qntNormalA > count($objEstabNormalA)){
			if($id_perfil == 2){
				$html .= "<option value='4' selected='selected' >Plano Certo</option>";
			}else{
				$html .= "<option value='4'>Plano Certo</option>";
			}

		}

		if($qntNormal > count($objEstabNormal)){
			if($id_perfil == 4){
				$html .= "<option value='4' selected='selected' >Plano Certo</option>";
			}else{
				$html .= "<option value='4'>Plano Certo</option>";
			}

		}
		
		$html .= "</select>";


		echo $html;

	}


	public static function verificarSePodeAlterarPerfil($id_usuario = 0){
		$qntPrimeA =  UsuarioPlano::qntPorPerfil($id_usuario, 3);
		$qntPrime =  UsuarioPlano::qntPorPerfil($id_usuario, 1);
		$qntNormalA =  UsuarioPlano::qntPorPerfil($id_usuario, 2);
		$qntNormal =  UsuarioPlano::qntPorPerfil($id_usuario, 4);

		$objEstabPrimeA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 3);
		$objEstabPrime = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 1);
		$objEstabNormalA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 2);
		$objEstabNormal = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 4);

		if($qntPrimeA > count($objEstabPrimeA)){
			return true;
		}else if($qntPrime > count($objEstabPrime)){
			return true;
		}
		else if($qntNormalA > count($objEstabNormalA)){
			return true;
		}
		else if($qntNormal > count($objEstabNormal)){
			return true;
		}else{
			return false;
		}



	}

	public static function verificarSePodeCadastrarEstab($id_usuario = 0){
		$qntPrimeA =  UsuarioPlano::qntPorPerfil($id_usuario, 3);
		$qntPrime =  UsuarioPlano::qntPorPerfil($id_usuario, 1);
		$qntNormalA =  UsuarioPlano::qntPorPerfil($id_usuario, 2);
		$qntNormal =  UsuarioPlano::qntPorPerfil($id_usuario, 4);

		$objEstabPrimeA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 3);
		$objEstabPrime = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 1);
		$objEstabNormalA = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 2);
		$objEstabNormal = Estabelecimento::todosEstabelecimentoUsuarioPorPerfil($id_usuario, 4);


		if($qntPrimeA > count($objEstabPrimeA)){
			return true;
		}else if($qntPrime > count($objEstabPrime)){
			return true;
		}
		else if($qntNormalA > count($objEstabNormalA)){
			return true;
		}
		else if($qntNormal > count($objEstabNormal)){
			return true;
		}else{
			return false;
		}

	}


	public static function criaSelectPlano($id = 0){
		$nome = "tipoPerfil";
		$nomeId = "tipoPerfil";
		$result_array = self::find_profile_client();
		$html  = "<select name='{$nome}' id='{$nomeId}'>";
		$html .= "<option value='{$id}'>Selecione um Perfil</option>";
		foreach($result_array as $perfil){
			$nomePerfil = alteraNomeDePerfilParaAtual($perfil->nome);
			if($perfil->id == 2 || $id == 2){
				$html .= "<option value='2' selected='selected'>Plano Certo</option>";
			}else{
			
				if($perfil->id == $id){
					$html .= "<option value='{$perfil->id}' selected='selected'>{$nomePerfil}</option>";
	
				} else {
					$html .= "<option value='{$perfil->id}'>{$nomePerfil}</option>";
	
				}
			}
		}
		$html .= "</select>";

		echo $html;

	}

	public static function hiddenUsuario($value = 5, $nome = "id_perfil"){
		echo "<input type='hidden' name={$nome} value='{$value}'>";
	}

	public static function hiddenCliente(){
		echo "<input type='hidden' name='id_perfil' value='6'>";
	}

	//Database Methods

	public static function find_all() {
		return self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE id <> 2");
	}

	public static function find_profile_client() {
		return self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE id < 5 AND id <> 2");
	}

	public static function find_by_id( $id = 0 ) {
		$result_array = self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE id={$id}");

		return !empty($result_array) ? array_shift($result_array) : false;
	}

	public static function find_by_sql( $sql = "" ) {
		global $database;
		$result_set = $database->query($sql);
		$object_array = array();
		if($result_set->execute()){
			while($row = $result_set->fetch(PDO::FETCH_ASSOC)){
				$object_array[] = self :: instantiate($row);
			}
		}

		return $object_array;
	}

	private static function instantiate($record){
		$object = new self;

		foreach($record as $attribute=>$value) {
			if($object->has_attribute($attribute)) {
				$object->$attribute = $value;
			}
		}

		return $object;
	}

	private function has_attribute($attribute){
		$object_vars = $this->attributes();
		return array_key_exists($attribute, $object_vars);
	}

	public static function count_all() {
		global $database;
		$sql = "SELECT COUNT(*) FROM " . self::$table_name;

		$result_set = $database->query($sql);
		$row = $database->fetch_array($sql);
		return array_shift($row);
	}

	public static function table_name(){
		return self::$table_name;
	}

	// CRUD
	protected function attributes(){
		// return an array of attribute keys and their values
		$attributes = array();
		foreach(self::$db_fields as $field){
			if(property_exists($this, $field)){
				$attributes[$field] = $this->$field;
			}
		}

		return $attributes;
	}

	protected function sanitized_attributes() {
		global $database;
		$clean_attributes = array();

		foreach($this->attributes() as $key => $value){
			$clean_attributes[$key] = $database->escape_value($value);
		}

		return $clean_attributes;
	}

	public function save() {
		// A new record won't have an id yet
		return isset($this->id) ? $this->update() : $this->create();
	}

	public function create() {
		global $database;
		$attributes = $this->sanitized_attributes();

		$sql  = "INSERT INTO " . self::$table_name . " (";
		$sql .= join(", ", array_keys($attributes));
		$sql .= ") VALUES ('";
		$sql .= join("' ,'", array_values($attributes));
		$sql .=  "')";

		if($database->query($sql)){
			$this->id = $database->insert_id();
			return true;
		} else {
			return false;
		}
	}

	public function update() {
		global $database;
		$attributes = $this->sanitized_attributes();
		$attribute_pairs = array();
		foreach($attributes as $key => $value) {
			$attribute_pairs[] = "{$key}='{$value}'";
		}

		$sql  = "UPDATE " . self::$table_name . " SET ";
		$sql .= join(", ", $attribute_pairs);
		$sql .= " WHERE id=". $database->escape_value($this->id);

		$database->query($sql);
		return ($database->affected_rows() == 1) ? true : false;
	}

	public function delete() {
		global $database;

		$sql  = "DELETE FROM " . self::$table_name . " ";
		$sql .= "WHERE id=" . $database->escape_value($this->id) . " ";
		$sql .= "LIMIT 1";

		$database->query($sql);
		return ($database->affected_rows() == 1) ? true : false;
	}

}
?>