<?php
header('Access-Control-Allow-Origin: *');
	require_once '../modelos/entidadobservacion.php';
	require_once '../modelos/modeloobservacion.php';

	$modelcc= new ModeloObservacion();

	if(isset($_REQUEST['Accion'])){
		switch($_REQUEST['Accion']){

		case 'listar':
				$jsondata=$modelcc->listar();
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;

        case 'obtenerObser':
            $jsondata = $modelcc->ObtenerObser($_REQUEST['obs_cod_menuped']);
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsondata);            
            break;		
  	}
}

?>