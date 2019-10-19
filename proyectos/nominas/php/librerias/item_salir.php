<?php
	$item = toba::memoria()->get_item_solicitado_original();
	
	//-- Si originalmente no se pidio salir, ir a la página inicial //4000006
	if ($item[1] == '103000336') {			
			toba::memoria()->eliminar_dato_instancia('pila_ejecucion');
			$js = toba_editor::modo_prueba() ? 'window.close()' : 'salir()';
			echo "<script language='javascript'>";
			echo $js;
			echo "</script>";
		}
?>
