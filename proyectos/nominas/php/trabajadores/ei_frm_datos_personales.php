<?php
class ei_frm_datos_personales extends nominas_ei_formulario
{
	//-----------------------------------------------------------------------------------
	//---- JAVASCRIPT -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function extender_objeto_js()
	{
		echo "
		//---- Procesamiento de EFs --------------------------------
		
		{$this->objeto_js}.evt__tiene_minusvalia__procesar = function(es_inicial)
		{
			if(this.ef('tiene_minusvalia').get_estado() == 'NO'){
				this.ef('porcentaje_minusvalia').ocultar();
			}else{
				this.ef('porcentaje_minusvalia').mostrar();
			}
			return true;
		}
		
		";
	}



}
?>