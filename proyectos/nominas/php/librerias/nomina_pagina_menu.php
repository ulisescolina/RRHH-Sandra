<?php

class nomina_pagina_menu extends toba_tp_normal
{
	protected function cabecera_aplicacion()
	{
		nomina_pagina::cabecera_nomina();

		$path = toba::proyecto()->get_www('js/jquery.scrollTop.js');
		$url = $path['url'];
		//ei_arbol($path['url']);
		echo"
			<script src='$url'></script>
			<script type='text/javascript'>
			$(function(){
					     
			scrollTop({
			color: '#009900', // valores en rga, rgba, hexadecimal (#666), o palabras clave 'grey'
			top:250, // tope de altura donde quieres que se muestre el botón de subir arriba
			time:500,  // intervalo en milisegundos que determina la duración de la opacidad del botón subir arriba
			position:'bottom', // posición del botón , admite estos posibles valores: 'top' 'middle' 'bottom',
			speed: 300 // tiempo en milisegundos en hacer el scroll hacia arriba (top:0)
			});
			});
			</script>
				
		";			
	}

	protected function menu()
	{
		if (isset($this->menu)) {
			echo '';
			echo '<div>';
			$this->menu->mostrar();
			echo '</div>';
		}		
	}
	function pie()
	{
		parent::pie();
		dao_consultas::generar_pie_pagina();
	}
	
}
?>
