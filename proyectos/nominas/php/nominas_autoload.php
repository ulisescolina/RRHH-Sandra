<?php
/**
 * Esta clase fue y será generada automáticamente. NO EDITAR A MANO.
 * @ignore
 */
class nominas_autoload 
{
	static function existe_clase($nombre)
	{
		return isset(self::$clases[$nombre]);
	}

	static function cargar($nombre)
	{
		if (self::existe_clase($nombre)) { 
			 require_once(dirname(__FILE__) .'/'. self::$clases[$nombre]); 
		}
	}

	static protected $clases = array(
		'nominas_ci' => 'extension_toba/componentes/nominas_ci.php',
		'nominas_cn' => 'extension_toba/componentes/nominas_cn.php',
		'nominas_datos_relacion' => 'extension_toba/componentes/nominas_datos_relacion.php',
		'nominas_datos_tabla' => 'extension_toba/componentes/nominas_datos_tabla.php',
		'nominas_ei_arbol' => 'extension_toba/componentes/nominas_ei_arbol.php',
		'nominas_ei_archivos' => 'extension_toba/componentes/nominas_ei_archivos.php',
		'nominas_ei_calendario' => 'extension_toba/componentes/nominas_ei_calendario.php',
		'nominas_ei_codigo' => 'extension_toba/componentes/nominas_ei_codigo.php',
		'nominas_ei_cuadro' => 'extension_toba/componentes/nominas_ei_cuadro.php',
		'nominas_ei_esquema' => 'extension_toba/componentes/nominas_ei_esquema.php',
		'nominas_ei_filtro' => 'extension_toba/componentes/nominas_ei_filtro.php',
		'nominas_ei_firma' => 'extension_toba/componentes/nominas_ei_firma.php',
		'nominas_ei_formulario' => 'extension_toba/componentes/nominas_ei_formulario.php',
		'nominas_ei_formulario_ml' => 'extension_toba/componentes/nominas_ei_formulario_ml.php',
		'nominas_ei_grafico' => 'extension_toba/componentes/nominas_ei_grafico.php',
		'nominas_ei_mapa' => 'extension_toba/componentes/nominas_ei_mapa.php',
		'nominas_servicio_web' => 'extension_toba/componentes/nominas_servicio_web.php',
		'nominas_comando' => 'extension_toba/nominas_comando.php',
		'nominas_modelo' => 'extension_toba/nominas_modelo.php',
	);
}
?>