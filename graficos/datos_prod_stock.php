<?php
	
	$conexion = new mysqli("localhost","root","","appss");
	
	$categorias = array();
	$enero = array('ENERO');
	$febrero = array('FEBRERO');
	$total = array("Total");
	
	$consulta = "SELECT tesis_fun_Menudesc(pd.product_id,1)dsc_menu 
					FROM cart_product pd ,cart ct
					where ct.estado in (3)
					and pd.cart_id=ct.id
					GROUP by pd.product_id 
					order by pd.product_id";
	$result = $conexion->query($consulta);
	
	while ($fila = $result->fetch_array()) {
		$categorias[] = $fila['dsc_menu'];
	}
	
	$consulta = "SELECT sum(pd.q) total 
	              FROM cart_product pd ,cart ct
					where ct.estado in (3)
					and pd.cart_id=ct.id
					GROUP by pd.product_id 
					order by pd.product_id";
	$result = $conexion->query($consulta);
	while($fila = $result->fetch_array()){
		
			$total[] = $fila['total'];
		
	}


	echo json_encode( array($categorias,$total) );
	
?>
