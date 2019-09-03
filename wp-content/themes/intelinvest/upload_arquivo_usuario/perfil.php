<?php
require_once('database.php');
class Perfil {

	protected static $table_name = "wp_perfil";
	protected static $db_fields = array('id', 'nome', 'cor', 'descricao');
	public $id;
	public $nome;
	public $cor;
	public $descricao;

	public static function retornaPerfil($id = 0){
		global $wpdb;
		$sql  = "SELECT * FROM " . self::$table_name . " ";
		$sql .= "WHERE id = '{$id}'";
		$sql .= "LIMIT 1";
		$result = $wpdb->get_row($sql);
		return $result;
	}

	public static function find_by_id( $id = 0 ) {
		$result_array = self::find_by_sql("SELECT * FROM " . self::$table_name . " WHERE id={$id}");

		return !empty($result_array) ? array_shift($result_array) : false;
	}

	public static function retornaNome($id = 0){
		$object = self::find_by_id($id);
		return $object->nome;
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
			$clean_attributes[$key] = $database->escape_value($value);
		}

		return $clean_attributes;
	}


}

?>