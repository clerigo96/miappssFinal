<?php

class CuerpoCeleste{
	private $cc_id;
	private $cc_nombre;
	private $cc_descripcion;
	private $cc_urlimagenp;
	private $cc_urlimagens;
	private $cc_precio;
	private $cc_stock;
	
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