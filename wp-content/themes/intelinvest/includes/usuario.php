<?php

class Usuario {

	protected static $table_name = "wp_users_system";
	protected static $db_fields = array('id', 'id_perfil', 'nome', 'cpf', 'dt_nasc', 'sexo', 'senha');
	public $id;
	public $id_perfil;
	public $nome;
	public $cpf;
	public $dt_nasc;
	public $email;
	public $senha;
	public $dt_cadastro;

	/***
	 * Method: retornaNome(int id)
	 * retorna o nome do usuário através do ID
	 * Parâmetro: id do usuário
	 */
	public static function retornaNome($id = 0){
		$object = self::find_by_id($id);
		if($object){
			return $object->nome;	
		}else{
			return $id;
		}
		
	}

	/***
	 * Method: criaSelectUsuario(int id)
	 * retorna a lista de todos os usuários cadastrados no sistema
	 * Parâmetro: id do usuário
	 */
	public function criaSelectUsuario($id = 0){
		$sql = "SELECT * FROM ". self::$table_name;
		$result_set = self::find_by_sql($sql);
		$html  = "<select name='usuario' id='usuario'>";

		foreach($result_set as $usr){
			if( $id == $usr->id){
				$html .= "<option value='".$usr->id . "' selected=selected>". $usr->nome;
				$html .= "</option>";
			}else{
				$html .= "<option value='".$usr->id . "'>". $usr->nome;
				$html .= "</option>";
			}

		}


		$html .= "</select>";

		echo $html;
	}

		
	//Função para validar se o apelido já está cadastrado na base de dados
	public static function validaCpfExiste($cpf = ""){

		$sql  = "SELECT * FROM " . self::$table_name . " ";
		$sql .= "WHERE cpf = '{$cpf}'";

		$result_set = self::find_by_sql($sql);

		return !empty($result_set) ? true : false;

	}

	public static function autenticar($email = "", $senha = "") {
		global $wpdb;

		$sql  = "SELECT * FROM " . self::$table_name . " ";
		$sql .= "WHERE email = '{$email}'";
		$sql .= "AND senha = '{$senha}'";
		$sql .= "LIMIT 1";

		$result = $wpdb->get_row($sql);
		return $result;
	}

	public function alterarSenha(){
		global $database;

		$this->senha = sha1($this->senha);
		$sql = "UPDATE  " . self::$table_name . " SET  senha =  '" . $this->senha . "' WHERE id = " . $this->id;
		$database->query($sql);
		return ($database->affected_rows() == 1) ? true : false;
	}

	public function novaSenha($senha = ""){
		global $database;
		$this->senha = sha1($senha);
		$sql = "UPDATE  " . self::$table_name . " SET  senha =  '" . $this->senha . "' WHERE email = '" . $this->email . "'";
		$database->query($sql);
		return ($database->affected_rows() == 1) ? true : false;
	}

	public function getAvatar($size = 234) {
	    $email   = $this->email; // e-mail de cadastro para pegar as imagens
	    $default = 'http://www.cantocerto.com.br/_imgs/icone_sem_perfil_user.png'; // imagem alternativa para se n�o existir
	    $grav_url = "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $email ) ) ) .
	    "?d=" . urlencode( $default ) . "&s=" . $size;
	    echo $grav_url;
	}

	public function getAvatarComent($size = 57) {
	    $email   = $this->email; // e-mail de cadastro para pegar as imagens
	    $default = 'http://www.cantocerto.com.br/_imgs/icone_comentario.png'; // imagem alternativa para se n�o existir
	    $grav_url = "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $email ) ) ) .
	    "?d=" . urlencode( $default ) . "&s=" . $size;
	    echo $grav_url;
	}

	public static function isAdministrador($id = 0){
		global $session;

		if($id == 0){
			$usuario = Usuario::find_by_id($session->user_id);
		} else {
			$usuario = Usuario::find_by_id($id);
		}
		$perfil = Perfil::retornaNome($usuario->id_perfil);
		return $perfil == "Administrador" ? true : false;
	}
	
	//Função para validar se o email já está cadastrado na base de dados
	public function validaEmail($email = ""){
		//global $database;

		$sql  = "SELECT * FROM " . self::$table_name . " ";
		$sql .= "WHERE email = '{$email}'";
		
		$result_set = self::find_by_sql($sql);

		return !empty($result_set) ? true : false;

	}

	public function usuarioDestinatario(){
		return $this->nome . " <" . $this->email . ">";
	}

	// Retorna a data atual
	public function pegaDataAtual(){
		$data = date('Y-m-d');
		return $data;
	}

	public static function hiddenStatusUsuario($value = 1, $nome = "flag"){
		echo "<input type='hidden' name={$nome} value='{$value}'>";
	}

	public static function find_by_email( $email = "" ) {
		$result_array = self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE email ='{$email}'");

		return !empty($result_array) ? array_shift($result_array) : false;
	}
	

	//Database Methods

	public static function find_all() {
		return self::find_by_sql("SELECT * FROM " . self::$table_name);
	}

	public static function find_by_id( $id = 0 ) {
		global $wpdb;
		$sql  = "SELECT * FROM " . self::$table_name . " ";
		$sql .= "WHERE id = '{$id}'";
		$sql .= "LIMIT 1";
		$result = $wpdb->get_row($sql);
		return $result;
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
		$row = $database->fetch_array($result_set);
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
		$sql .= ", dt_cadastro) VALUES (NULL, '";
		$sql .= $database->escape_value($this->id_perfil) . "', '";
		$sql .= $database->escape_value($this->nome) . "', '";
		$sql .= $database->escape_value($this->cpf) . "', '";
		$sql .= $database->escape_value($this->dt_nasc) . "', '";
		$sql .= $database->escape_value($this->sexo) . "', '";
		$sql .= $database->escape_value($this->email) . "', '";
		$sql .= sha1($database->escape_value($this->senha)) . "', '" ;
		$sql .= $database->escape_value($this->flag) . "', '";
		$sql .= $this->pegaDataAtual()."')";
		
		if($database->query($sql)){
			$this->id = $database->insert_id();
			return true;
		} else {
			return false;
		}
	}

//	public function update() {
//		global $database;
//		$attributes = $this->sanitized_attributes();
//		$attribute_pairs = array();
//		foreach($attributes as $key => $value) {
//			if($key == "cpf"){
//				$attribute_pairs[] = "{$key}=".$value;
//			} else {
//				$attribute_pairs[] = "{$key}='{$value}'";
//			}
//		}
//
//		$sql  = "UPDATE " . self::$table_name . " SET ";
//		$sql .= join(", ", $attribute_pairs);
//		$sql .= " WHERE id=". $database->escape_value($this->id);
//
//		$database->query($sql);
//		return ($database->affected_rows() == 1) ? true : false;
//	}

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