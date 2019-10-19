<?php
class ei_inasistencias_tardanza extends nominas_ei_formulario
{
	//-----------------------------------------------------------------------------------
	//---- JAVASCRIPT -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function extender_objeto_js()
	{
		echo "
		//---- Procesamiento de EFs --------------------------------
		
		{$this->objeto_js}.evt__justificada__procesar = function(es_inicial)
		{
			if(this.ef('justificada').get_estado() == 'T'){
				this.ef('cantidad').mostrar();
			}else{
				this.ef('cantidad').ocultar();
			}
			return true;
		}
		";
	}

}

?>