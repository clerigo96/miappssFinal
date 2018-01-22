<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class ModeloObservacion{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	
	public function ObtenerObser($id){
        $jsonresponse = array();
        try{
            $stm = $this->pdo->prepare("SELECT * FROM  tesis_tab_observaciones 
            							where obser_cod_menuped= ?");
            $stm->execute(array($id));
            $r = $stm->fetch(PDO::FETCH_OBJ);

            $cuerpocel = new CuerpoObser();
                    $cuerpocel->__SET('obs_cod_menuped', $r->obser_cod_menuped);
					$cuerpocel->__SET('obs_id', $r->obser_cod_Obser);
					$cuerpocel->__SET('obs_descripcion', utf8_encode($r->obser_dsc_Obser));
					$cuerpocel->__SET('obs_fec', $r->obser_fec_vige);
					$cuerpocel->__SET('obs_megusta', $r->obser_cod_megusta);

            $jsonresponse['success'] = true;
            $jsonresponse['message'] = 'Se obtuvo  correctamente';
            $jsonresponse['datos'] = $cuerpocel->returnArray();
        } catch (Exception $e){
            //die($e->getMessage());
            $jsonresponse['success'] = false;
            $jsonresponse['message'] = 'Error ';             
        }
        return $jsonresponse;
    }
}
?>
