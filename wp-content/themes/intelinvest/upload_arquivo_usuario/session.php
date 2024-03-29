<?php

class Session {
	
	private $logged_in = false;
	public $user_id;
	public $message;
	public $palavra;
	
	function __construct() {
		ob_start();
		session_start();
		// $this->check_login();
		$this->check_message();
		if($this->logged_in) {
			
		} else {
			
		}
	}
	
	public function is_logged_in() {
		return $this->logged_in;
	}
	
	public function login($user) {
		
		if($user) {
			$this->user_id = $_SESSION['user_id'] = $user->id;
			$this->logged_in = true;
		}
	}
	
	public function logout() {
		unset($_SESSION['user_id']);
		unset($this->user_id);
		$this->logged_in = false;
	}
	
	private function check_login() {
		if(isset($_SESSION['user_id'])) {
			$this->user_id = $_SESSION['user_id'];
			$this->logged_in = true;
		} else {
			unset($this->user_id);
			$this->logged_in = false;
		}
	}
	
	public function message($msg=""){
		if(!empty($msg)){
			$_SESSION['message'] = $msg;
		} else {
			return $this->message;
		}
	}
	
	private function check_message(){
		//Is there a message stored in the session?
			if(isset($_SESSION['message'])){
				// Add it as an attribute and erase the stored version
				$this->message = $_SESSION['message'];
				unset($_SESSION['message']);
			} else {
				$this->message = "";
			}
	}
	
	public function pagina($palavra){
			session_start();
			$_SESSION['pagina'] = $palavra;
	}
	
}

$session = new Session();
$message = $session->message();

?>