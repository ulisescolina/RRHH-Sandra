<?php

class constantes
{
	/* 
		Para definir una constante se agregara una entrada al arreglo, con el siguiente formato:
				'nombre' => array('valor' => numero/caracter , 'tabla' => nombretabla)
	*/
	
	static protected $lista_constantes = array
	(
		'CONTADOR_NOMINAS' => array('valor' => 'NOMINA')
		,'TAMANIO_MAXIMO_PILA' => array('valor' => '5')
		,'PANTALLA_INICIAL_SISTEMA' => array('valor' => '2')
		,'MASCARA_NUMERO_VACIO' => array('valor' => '--/----')
		,'IDS_OPERACIONES_APILAR'	=> array('valor' => '103000148')
	);
	
	//Devuelve el valor de la constante indicada como parametro, si no se encuentra devuelve null
	static function get_valor_constante($nombre_constante)
	{
		$valor = null;
		if (isset(self::$lista_constantes[$nombre_constante]['valor']))
				$valor = self::$lista_constantes[$nombre_constante]['valor'];		
		//else
		//	throw new excepcion_incidente(1000001,array($nombre_constante));
				
		return $valor;	
	}
	
	//Devuelve el nombre de la tabla que referencia la constante indicada, si no se encuentra devuelve null
	static function get_tabla_origen_de_constante($nombre_constante)
	{
		$tabla = null;
		if (isset(self::$lista_constantes[$nombre_constante]['tabla']))
				$tabla = self::$lista_constantes[$nombre_constante]['tabla'];
				
		return $tabla;
	}
	
	//Devuelve un booleano que indica si la constante referencia un valor en una tabla.
	static function es_dato_de_tabla($nombre_constante)
	{
		return (isset(self::$lista_constantes[$nombre_constante]['tabla']));
	}

	static function get_path_documentos()
	{
		if (toba::proyecto()->get_parametro('proyecto', 'ruta_docs')) {
			return toba::proyecto()->get_parametro('proyecto', 'ruta_docs');
		} else {
			return toba::proyecto()->get_www();
		}
	}
}
?>
