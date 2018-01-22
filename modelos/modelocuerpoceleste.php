<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class ModelCuerpoCeleste{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	public function listar(){
		$responsearray = array();
		try{
			$result = array();
			$stm=$this->pdo->prepare("select * from tesis_tab_menupedido");
			$stm->execute();
			foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
				$cuerpocel = new CuerpoCeleste();
					$cuerpocel->__SET('cc_id', $r->mePed_cod_mePed);
					$cuerpocel->__SET('cc_nombre', $r->mePed_dsc_menu);
					$cuerpocel->__SET('cc_descripcion', utf8_encode($r->mePed_dsc_Descripcion));
					$cuerpocel->__SET('cc_urlimagenp', $r->mePed_img_mePed_p);
					$cuerpocel->__SET('cc_urlimagens', $r->mePed_img_mePed_s);
	                $cuerpocel->__SET('cc_stock', $r->mePed_cod_stok);
	                $cuerpocel->__SET('cc_precio', $r->mePed_cod_precio);
				$result[] = $cuerpocel->returnArray();
			}
			$responsearray['success']=true;
			$responsearray['message']='Listado correctamente';
			$responsearray['datos']=$result;

		}catch(Exception $e){
			echo $e;
			$responsearray['success']=false;
			$responsearray['message']='Error al listar cuerpocelnos';
		}
		return $responsearray;
	}
	public function Obtener($id){
        $jsonresponse = array();
        try{
            $stm = $this->pdo->prepare("SELECT * FROM tesis_tab_menupedido 
            							where mePed_cod_mePed = ?");
            $stm->execute(array($id));
            $r = $stm->fetch(PDO::FETCH_OBJ);

            $cuerpocel = new CuerpoCeleste();
					$cuerpocel->__SET('cc_id', $r->mePed_cod_mePed);
					$cuerpocel->__SET('cc_nombre', $r->mePed_dsc_menu);
					$cuerpocel->__SET('cc_descripcion', utf8_encode($r->mePed_dsc_Descripcion));
					$cuerpocel->__SET('cc_urlimagenp', $r->mePed_img_mePed_p);
					$cuerpocel->__SET('cc_urlimagens', $r->mePed_img_mePed_s);
	                $cuerpocel->__SET('cc_stock', $r->mePed_cod_stok);
	                $cuerpocel->__SET('cc_precio', $r->mePed_cod_precio);

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
