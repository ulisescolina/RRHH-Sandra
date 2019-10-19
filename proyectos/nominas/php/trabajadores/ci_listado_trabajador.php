<?php
class ci_listado_trabajador extends nominas_ci
{
	protected $s__seleccion;
	protected $s__filtro;
	protected $s__id_trabajador;
	//-----------------------------------------------------------------------------------
	//---- Eventos ----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function evt__volver_listado()
	{
		$this->set_pantalla('pant_inicial');
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro -----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro(nominas_ei_cuadro $cuadro)
	{
		if(isset($this->s__filtro)){
			$datos=dao_consultas::get_datos_del_trabajador($this->s__filtro);
		}else{
			$datos=dao_consultas::get_datos_del_trabajador();
		}
			$cuadro->set_datos($datos);
	}

	function evt__cuadro__seleccion($seleccion)
	{
		$this->s__seleccion=$seleccion;
		
		toba::vinculador()->navegar_a(null,103000338,$seleccion);
		//$this->set_pantalla('pant_secundaria');
	}

	function conf_evt__cuadro__seleccion(toba_evento_usuario $evento, $fila)
	{
	}

	//-----------------------------------------------------------------------------------
	//---- formulario -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__formulario(nominas_ei_formulario $form)
	{
		if(isset($this->s__seleccion)){
			$datos=dao_consultas::get_datos_del_trabajador($this->s__seleccion);
			$form->set_datos($datos[0]);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- filtro -----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__filtro(nominas_ei_filtro $filtro)
	{
		if(isset($this->s__filtro)){
			return $this->s__filtro;
		}
	}

	function evt__filtro__filtrar($datos)
	{
		$this->s__filtro['where'] = $this->dep('filtro')->get_sql_where('AND');
	}

	function evt__filtro__cancelar()
	{
		unset($this->s__filtro);
	}
	function vista_pdf($salida)
	{
		
		$path_imagen = toba::proyecto()->get_path() . "/www/img/Provinmisiones.jpg";
		$salida->insertar_imagen($path_imagen,0,0, 'left');
		
		//	$salida->titulo("Reporte total de documentos ingresados");
		
			$salida->texto("<b>Ficha del trabajador</b>",16,array( 'justification' => 'center' ));
		
		
		$salida->set_nombre_archivo("ficha_trabajador.pdf");
		//$this->dependencia('formulario')->set_manejador_salida('pdf','toba_ei_cuadro_salida_pdf_expediente');
		$this->dependencia('formulario')->vista_pdf( $salida );	   
	}

	function vista_impresion_html($salida)
	{
		$salida->titulo( "<div align='center'>Ficha del trabajador");
		$this->dependencia('formulario')->vista_impresion_html( $salida );
	}
	function evt__cuadro__modificar($seleccion)
	{
		toba::vinculador()->navegar_a(null,103000337,$seleccion);
	}

	function ini__operacion()
	{
		if (toba::memoria()->get_parametro('id_trabajador') != '' ) {
			$this->s__id_trabajador= toba::memoria()->get_parametro('id_trabajador');
			$this->s__seleccion['id_trabajador']=$this->s__id_trabajador;
			$this->set_pantalla('pant_secundaria');	
		}
	}

}
?>