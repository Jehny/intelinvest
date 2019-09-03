<?php
require_once('database.php');
class Arquivo {
	
	protected static $table_name = "wp_arquivos";
	protected static $db_fields = array('id', 'nome', 'pasta', 'id_user', 'id_perfil', 'tipo', 'dt_cad');

	public $id;
	public $pasta;
	public $nome;
	public $id_user;
	public $id_perfil;
	public $dt_cad;
	public $tipo;
	
	private $temp_path;
	// protected $upload_dir = UPLOAD;
	
	public $erros = array();
	
	protected $upload_erros = array(
		UPLOAD_ERR_OK => "Sucesso!",
		UPLOAD_ERR_INI_SIZE => "Arquivo muito grande!",
		UPLOAD_ERR_FORM_SIZE => "Maior que suportado!",
		UPLOAD_ERR_PARTIAL => "Upload Parcial!",
		UPLOAD_ERR_NO_FILE => "Sem arquivo!",
		UPLOAD_ERR_NO_TMP_DIR => "Falha no diret�rio tempor�rio!",
		UPLOAD_ERR_CANT_WRITE => "N�o pode escrever no disco!",
		UPLOAD_ERR_EXTENSION => "Erro de extens�o!"
	);
		
	public function attach_file($file){
		if(!$file || empty($file) || !is_array($file)){
			$this->erros[] = "Arquivo n�o salvo";
			return false;
		}else if($file['error'] !=0){
			$this->erros = $this->upload_erros[$file['error']];
			return false;
		}else{
			$this->temp_path = $file['tmp_name'];
			$this->nome = basename($file['name']);
			return true;
		}		
	}
	
	public function customSave(){
		if(isset($this->id)){
			$this->update();
		}else{
			
			if(!empty($this->erros)){return false;}
			
			if(empty($this->nome) || empty($this->temp_path)){
				$this->erros[] = "O Arquivo n�o � v�lido";
				return false;
			}
			
			$target_path = $this->upload_dir. "/". $this->nome;
			
			if(file_exists($target_path)){
				$this->erros[] = "O aquivo j� existe";
				return false;
			}
			
			if(move_uploaded_file($this->temp_path, $target_path)){
				
				if($this->create()){
					unset($this->temp_path);
					return true;
				}
				
			}else{
				$this->erros[] = "Falha no upload";
				return false;
			}
			
			
		}
	}
	
	public static function find_files($id_user){
		return self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE id_user = " . $id_user);
	}
	
	public static function count_files($id_user) {
		global $database;
		$sql = "SELECT COUNT(*) FROM " . self::$table_name . " WHERE id_user = " . $id_user;

		$result_set = $database->query($sql);
		$row = $database->fetch_array($sql);
		return array_shift($row);
	}
	
	/**
	 * Método que exclui os arquivos que não foram passados para um diretório de um estabelecimentos.
	 * Os arquivos de fotos que foram deletados são arquivos menores que o dia atual, que será chamado
	 * por um JOB ou por um botão que limpará o diretório deixando somente os arquivos do dia atual.
	 */
	 public static function limparDiretorioFotos(){
	 	$path = "_fotos/";
	   	$diretorio = dir($path);
		$dataAtual = mktime (0, 0, 0, date('m')  , date('d'), date('Y'));	
	   	while($arquivo = $diretorio -> read()){
	   		$data = date ("Y/m/d", filectime($path.$arquivo));
	   		$arrayDataFile = retornaArrayData($data);
	   		$dataFile = mktime(0, 0, 0, $arrayDataFile[1], $arrayDataFile[2], $arrayDataFile[0]);
	   		$result = $dataAtual - $dataFile;
		      if($result > 0){
		      	 unlink($path.$arquivo);
		      }
	   	}
	   	$diretorio -> close();
	 }
	 	
	//Database Methods
	
	public static function find_all() {
		return self::find_by_sql("SELECT * FROM " . self::$table_name);
	}
	
	public static function find_by_id( $id_user = 0 ) {
		$result_array = self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE id={$id_user}");
		
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
			// $clean_attributes[$key] = $database->escape_value($value);
			$clean_attributes[$key] = $value;
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
	
	public function delete($id=0) {
		global $database;
		
		$sql  = "DELETE FROM " . self::$table_name . " ";
		$sql .= "WHERE id=" . $id . " ";
		$sql .= "LIMIT 1";
		
		$stmt = $database->query($sql);
		return ($stmt == 1) ? true : false;
	}
	
}


?>