<?php
	include "layout/session.php";

	if($session->logout()){
		redirect_to("../index.php");
	}
	

?>