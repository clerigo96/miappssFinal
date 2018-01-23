    $(document).ready(function(){
   
        //funcion para listar los cecostos
        var getlista = function (){
            var datax = {
                "Accion":"listar"
            }
            $.ajax({
                data: datax, 
                type: "GET",
                dataType: "json", 
                url: "controllers/controllerobservacion.php", 
            })
            .done(function( data, textStatus, jqXHR ) {
                $("#listado").html("");
                if ( console && console.log ) {
                    console.log( " data success : "+ data.success 
                        + " \n data msg : "+ data.message 
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
                for(var i=0; i<data.datos.length;i++){
                                //console.log('id: '+data.datos[i].cc_id + ' nombre: '+data.datos[i].cc_nombre);
                               // var descrip= data.datos[i].cc_descripcion;
                               // textonuevo = descrip.substr(0,15);
                                   //console.log(textonuevo.length);
                                    fila ='<div class="col-md-4 mb-4 mb-md-0 ">';
                                    fila +='<div class="card h-100" align="center "  style="background-color:White;">';
                                    fila +='<a href="Observacion.html?id='+data.datos[i].cc_id+'"><img src="'+data.datos[i].cc_urlimagens+'"  class="img-circle"></a>';
                                    fila +='<h2 class="text-center text-lg text-uppercase my-0">';
                                    fila +='Producto :'+data.datos[i].cc_nombre+'<br>';
                                    fila +='Precio:'+data.datos[i].cc_precio+'<br>';
                                    fila +='<b>STOCK Actual:'+data.datos[i].cc_stock+'</b><br>';
                                    fila +=' </h2> </div> </div>';
                                    $("#listado").append(fila);
                }
            })
            .fail(function( jqXHR, textStatus, errorThrown ) {
                if ( console && console.log ) {
                    console.log( " La solicitud getlista ha fallado,  textStatus : " +  textStatus 
                        + " \n errorThrown : "+ errorThrown
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
            });
        }
        getlista();
    });
   