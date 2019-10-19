<?php
class ci_documentacion extends nominas_ci
{
    protected $s__fecha_actual;
	protected $s__seleccion;
	protected $s__id_trabajador;
	
	//-----------------------------------------------------------------------------------
	//---- Eventos ----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------
	function conf()
	{
		if (toba::zona()->cargada()) {
			$this->s__id_trabajador=toba::zona()->get_editable();
		
			toba::zona()->resetear();
		}else{
			if (toba::memoria()->get_parametro('id_trabajador') != '' ) {
				$this->s__id_trabajador=toba::memoria()->get_parametro('id_trabajador');
			}
		}
		if ($this->s__id_trabajador != '' ) {		
			$this->get_relacion()->cargar(array('id_trabajador'=>$this->s__id_trabajador));
        }
	}
    function resetear()
	{
		$this->dep('dr_trabajadores')->resetear();

	}
	function get_relacion(){
		return $this->dependencia('dr_trabajadores');
	}
	function evt__cancelar()
	{
        toba::vinculador()->navegar_a(null,103000338,array('id_trabajador'=>$this->s__id_trabajador));
	}
    function ini__operacion()
	{
		$this->s__fecha_actual= new toba_fecha();
	}
}
?>