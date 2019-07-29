<?php

require_once("config.php");

class MySQLDatabase {
	
	private $connection;
	public $last_query;
	private $magic_quotes_active;
	private $real_escape_string_exists;
	private $db;
	
	function __construct() {
		$this->open_connection();
		$this->magic_quotes_active = get_magic_quotes_gpc();
		$this->real_escape_string_exists = function_exists("mysql_real_escape_string"); // i.e. PHP >= v4.3.0
	}
	
	public function open_connection() {
// 		$this->connection = new PDO(PDO_CONF, DB_USER, DB_PASS);
		$this->db = new PDO(PDO_CONF, DB_USER, DB_PASS);
// 		if(!$this->connection){
// 			die('Database connection failed: ' . mysql_error());
// 		} else {
// 			$db_select = mysql_select_db(DB_NAME, $this->connection);
// 			if(!$db_select){
// 				die('Database selection failed: ' . mysql_error());
// 			}
// 		}
	}
	
	public function close_connection() {
		if(isset($this->db)){
			mysql_close($this->db);
			unset($this->db);
		}
		
// 		if(isset($this->connection)) {
// 			mysql_close($this->connection);
// 			unset($this->connection);
// 		}
	}
	
	public function query($sql) {
		$this->last_query = $sql;
// 		$result = mysql_query($sql, $this->connection);

		try {
			$result = $this->db->query($sql);
		} catch(PDOException $ex) {
			echo "Erro na execução de uma consulta método query!"; //user friendly message
			some_logging_function($ex->getMessage());
		}
		$this->confirm_query($result);
		
		return $result;
	}
	
	public function fetch_array($result_set) {
// 		return mysql_fetch_array($result_set);
		$stmt = $this->db->query($result_set);
// 		return $stmt;
		return $stmt->fetch(PDO::FETCH_ASSOC);
	}
	
	public function escape_value( $value ) {
		
		if( $this->real_escape_string_exists ) { //PHP v4.3.0 or higher
			//undo any magic quote effects so mysql_real_escape can do the work
			if( $this->magic_quotes_active ) {
				$value = stripslashes( $value );
			}
			$value = mysql_real_escape_string( $value );
		} else { // before PHP v4.3.0
			// if magic_quotes aren't already on then add slashes manually
			if( !$this->magic_quotes_active ) {
				$value = addslashes( $value );
			}
		}
		return $value;
	}
	
	public function num_rows($result_set) {
		return mysql_num_rows($result_set);
	}
	
	public function insert_id() {
		//get the last id inserted over the current db connection
// 		return mysql_insert_id($this->connection);
		return $this->db->lastInsertId();
	}
	
	public function affected_rows() {
		return mysql_affected_rows($this->connection);
	}
	
	private function confirm_query($result) {
		if (!$result) {
			$output  = '<!DOCTYPE html>';
			$output .= '<html>';
			$output .= '	<head>';
			$output .= '		<meta charset="utf-8">';
			$output .= '		<title>Canto Certo</title>';
			$output .= "		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>";
			$output .= '		<link rel="stylesheet" href="http://www.cantocerto.com.br/_css/master.css" type="text/css" media="screen">';
			$output .= '	</head>';
			$output .= '	<body id="problem">';
			$output .= '		<div id="pagina"><section><header>';
			$output .= "<h1>Database query failed: " . mysql_error() . "</h1>";
			$output .= "<p>Last SQL Query: " . $this['last_query'] . "</p>";
			$output .= '</header></section>';
			$output .= '</body></html>';
			die($output);
		}
	}
	
}

$database = new MySQLDatabase();
$db =& $database;

?>