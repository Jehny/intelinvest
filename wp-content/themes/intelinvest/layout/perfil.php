<?php
class Perfil {

	protected static $table_name = "wp_perfil";
	protected static $db_fields = array('id', 'nome', 'cor');
	public $id;
	public $nome;
	public $cor;

	public static function retornaNome($id = 0){
		global $wpdb;
		$sql  = "SELECT * FROM " . self::$table_name . " ";
		$sql .= "WHERE id = '{$id}'";
		$sql .= "LIMIT 1";
		$result = $wpdb->get_row($sql);
		return $result;
	}

}

?>