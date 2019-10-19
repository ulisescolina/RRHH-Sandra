<?php
class contexto_ejecucion implements toba_interface_contexto_ejecucion
{

        static private $clases = array(
			'dao_consultas' => 'librerias/dao_consultas.php'
			,'constantes' => 'librerias/constantes.php'
			,'nomina_pagina' => 'librerias/nomina_pagina.php'
        	,'nomina_pagina_menu' => 'librerias/nomina_pagina_menu.php'
        );

		function conf__inicial()
        {

			   spl_autoload_register(array('contexto_ejecucion', 'cargador_clases'));

                $mensaje = toba::memoria()->get_dato("mensaje"); 
                if(isset($mensaje))
                {
					toba::notificacion()->warning($mensaje);
					toba::memoria()->eliminar_dato("mensaje");
                }				
				$id_item = toba::memoria()->get_item_solicitado();
				$pila = toba::memoria()->get_dato_instancia('pila_ejecucion');
				$params_memoria = toba::memoria()->get_parametros();
				$datos_pila = array();
				$datos_pila['id_item'] = $id_item;
				$datos_pila['params_memoria'] = $params_memoria;
				toba::logger()->debug("NOMINAS: ID DEL COMPONENTE ACTUAL (PANTALLA ACTUAL)");
				toba::logger()->var_dump($id_item);
			if (!isset($datos_pila['params_memoria']["retro"]))
				$datos_pila['params_memoria']["retro"]=0;
				
			if($datos_pila['params_memoria']["retro"]!=1){
				if ($pila !== null) {
							$valor = end($pila);						
							if ($valor['id_item'] != $id_item) {
								if(count($pila) > constantes::get_valor_constante("TAMANIO_MAXIMO_PILA"))
								{
									array_shift($pila); //Elimina el primer elemento de la pila para mantener un tamaño máximo de 5-->definido en constante TAMANIO_MAXIMO_PILA
								}
									if($this->debe_apilarse($id_item))
										$pila[] = $datos_pila;
							}
							} else {
										if($this->debe_apilarse($id_item))
											$pila[] = $datos_pila;
								}
					
			}else{
				array_pop($pila);
			}
					toba::logger()->debug("NOMINAS: CONTENIDO DE LA PILA DE NAVEGACION ENTRE PANTALLAS");
					toba::logger()->var_dump($pila);
					toba::memoria()->set_dato_instancia('pila_ejecucion', $pila);
        }

        function conf__final()
        {
        }

	function retroceder_pantalla($devolver_datos = false)
	{
		$pila = toba::memoria()->get_dato_instancia('pila_ejecucion');
		
		array_pop($pila);//elimino de la pila la pantalla actual		
		toba::logger()->debug("NOMINAS: RETROCESO DE PANTALLA");
		toba::logger()->var_dump($pila);
		if(count($pila)  > 1)
		{
			$parametros_vinculador= array_pop($pila); //obtengo la pantalla anterior (Quito elemento de la pila)
			
		}else{
			$parametros_vinculador['id_item'][1] = constantes::get_valor_constante("PANTALLA_INICIAL_SISTEMA");
			$parametros_vinculador['params_memoria'] = null;
			
		}

		$parametros_vinculador["params_memoria"]["retro"] = 1;
		if($devolver_datos){
			return $parametros_vinculador;
		}
		toba::memoria()->set_dato_instancia('parametros_operacion', $parametros_vinculador);
	
		toba::vinculador()->navegar_a(null, $parametros_vinculador['id_item'][1],$parametros_vinculador['params_memoria']);
	}

        static function cargador_clases($clase)
        {
            if(isset(self::$clases[$clase])){
			require_once(toba::proyecto()->get_path_php() . '/' . self::$clases[$clase]);
		}
	}
	
	function debe_apilarse ($op) //Devuelve TRUE o FALSE (SI Puede apliarse,NO puede apilarse)
	{
		$debe_apilarse = null;
		//Devuelve un string con las los id operaciones que pueden apilarse
		$operaciones_a_apilarse = constantes::get_valor_constante("IDS_OPERACIONES_APILAR"); 
		if($op)
			$debe_apilarse = substr_count($operaciones_a_apilarse,(string)$op[1]);
		//$debe_apilarse = (int) $debe_apilarse;
		if($debe_apilarse>0){ 
			return true;
		}else{
			return false;
		}
	}
	
	/*
	 *Se anexan parametros a la operación actual almacenada en la pila
	 *Entrada: variable $datos a almacenar en la dimension 'params_extras' del array pila
    */
	function set_parametro_operacion($datos = null)
	{		
		$pila = toba::memoria()->get_dato_instancia('pila_ejecucion');
		$ultima_pila=array_pop($pila);
		$ultima_pila['params_extras'] = $datos;
		$pila[] = $ultima_pila;
		toba::memoria()->set_dato_instancia('pila_ejecucion', $pila);
	}

	/*
	 * Se retorna los datos de la dimension 'params_extras' de la operación actual siempre y cuando si está definido
    */
	function get_parametro_operacion()
	{
		$id_item = toba::memoria()->get_item_solicitado();
		$parametros = null;
		$parametros_operacion = toba::memoria()->get_dato_instancia('parametros_operacion');
		toba::memoria()->eliminar_dato_instancia('parametros_operacion');
		if (isset($parametros_operacion['params_extras']) && $parametros_operacion['id_item'] == $id_item) {
			$parametros = $parametros_operacion['params_extras'];
		}		
		return $parametros;	
	}	
}
