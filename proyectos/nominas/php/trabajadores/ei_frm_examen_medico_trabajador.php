<?php
class ei_frm_examen_medico_trabajador extends nominas_ei_formulario
{
	//-----------------------------------------------------------------------------------
	//---- JAVASCRIPT -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function extender_objeto_js()
	{
		echo "
		//---- Procesamiento de EFs --------------------------------
		
		{$this->objeto_js}.evt__repetir__procesar = function(es_inicial)
		{
            if(this.ef('repetir').get_estado() == 'NO'){
				this.ef('fecha_nuevo_estudio').ocultar();
			}else{
				this.ef('fecha_nuevo_estudio').mostrar();
			}
			return true;
		}
		";
	}


}
?>