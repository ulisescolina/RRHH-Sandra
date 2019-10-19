<?php
class ci_hijos extends nominas_ci
{
	protected $s__fecha_actual;
	protected $s__hijos;
	protected $s__id_trabajador;
	
	protected $s__datos_hijos;
	//-----------------------------------------------------------------------------------
	//---- Eventos ----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------
	function conf()
	{
		//$this->cn()->set_datos_relacion('dr_expedientes_movimientos');
		if (toba::zona()->cargada()) {
			$this->s__id_trabajador=toba::zona()->get_editable();
		
			toba::zona()->resetear();
		}else{
			if (toba::memoria()->get_parametro('id_trabajador') != '' ) {
				$this->s__id_trabajador=toba::memoria()->get_parametro('id_trabajador');
			}
		}
		if ($this->s__id_trabajador != '' ) {
			$this->s__datos_hijos=dao_consultas::get_datos_hijos(array('id_trabajador'=>$this->s__id_trabajador));
			
			$this->get_relacion()->cargar(array('id_trabajador'=>$this->s__id_trabajador));
        }
		//$this->s__datos_expediente = $this->cn()->get_cabecera();
	}
    function resetear()
	{
		$this->dep('dr_trabajadores')->resetear();

	}
	function get_relacion(){
		return $this->dependencia('dr_trabajadores');
	}
    //-----------------------------------------------------------------------------------
	//---- ml_hijos ---------------------------------------------------------------------
	//-----------------------------------------------------------------------------------
	function conf__ml_hijos(nominas_ei_formulario_ml $form_ml)
	{
		$filas=$this->get_relacion()->tabla('hijos')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($filas) && count($filas)>0){
			$form_ml->set_datos($filas);
		}
	}
	
	function evt__ml_hijos__modificacion($datos)
	{
		$this->s__hijos=$datos;
	}
	function evt__procesar()
	{
		$this->dep('dr_trabajadores')->tabla('trabajadores')->set(array('id_trabajador'=>$this->s__id_trabajador));
		
		
		if($this->s__hijos!=null){
		
			$this->dep('dr_trabajadores')->tabla('hijos')->procesar_filas($this->s__hijos);
		}
		$this->dep('dr_trabajadores')->sincronizar();
		
		$this->resetear();
	}

	function evt__cancelar()
	{
        toba::vinculador()->navegar_a(null,103000338,array('id_trabajador'=>$this->s__id_trabajador));
	}

}
?>