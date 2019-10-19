<?php
class ei_traslado extends nominas_ei_formulario
{
	//-----------------------------------------------------------------------------------
	//---- JAVASCRIPT -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function extender_objeto_js()
	{
		echo "
		//---- Procesamiento de EFs --------------------------------
		
		{$this->objeto_js}.evt__tipo_traslado__procesar = function(es_inicial)
		{
			if(this.ef('tipo_traslado').get_estado() == 'T'){
				this.ef('fecha_hasta').mostrar();
			}else{
				this.ef('fecha_hasta').ocultar();
			}
			return true;
		}
		";
	}

}

?>