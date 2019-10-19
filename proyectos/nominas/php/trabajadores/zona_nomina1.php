<?php  
 class zona_nomina1 extends toba_zona { 

	function html_boton($vinculo, $imagen, $texto, $extras=null) { 
		$html = toba_recurso::imagen(toba_recurso::imagen_toba($imagen), null, null, null, null, null, "margin:0 1px 0 1px;"); 
		$html .= "<div white-space='normal'>$texto</div>"; 
		$js = "onclick=\"window.location.href = '$vinculo';\""; 
		return toba_form::button_html('',$html,$js,null,null,$texto,'button','','ei-boton boton-zona',true, "$extras;padding:0;margin:0;"); 
	} 

    function generar_html_barra_vinculos() 
	{ 
        foreach($this->items_vecinos as $item){ 
        	$vinculo = toba::vinculador()->crear_vinculo($item['item_proyecto'], $item['item'],  
        	array(), array('zona' =>true, 'menu'=>true, 'validar'=>false)); 
			echo $this->html_boton($vinculo, $item['imagen'], $item['nombre'],'width:75px;height:60px;white-space:normal'); 	
		} 
	} 
} 
