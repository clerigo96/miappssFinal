<?php

class CuerpoObser{
	private $obs_id;
	private $obs_descripcion;
	private $obs_cod_menuped;
	private $obs_fec;
	private $obs_megusta;
	
	public function __GET ($k){
		return $this->$k;
	}
	public function __SET($k,$v){
		$this->$k=$v;
	}
	public function returnArray(){
		return get_object_vars($this);
	}
}

?>