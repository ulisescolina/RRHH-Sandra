<?php
class zona_nomina2 extends toba_zona {
	
	function html_boton($vinculo, $imagen, $texto, $extras=null) {
		$html = toba_recurso::imagen(toba_recurso::imagen_proyecto($imagen), null, null, null, null, null,null, "margin:0 1px 0 1px;");
		$html .= "<div white-space='normal'>$texto</div>";
		$js = "onclick=\"window.location.href = '$vinculo';\"";
		return toba_form::button_html('',$html,$js,null,null,$texto,'button','','ei-boton boton-zona',true, "$extras;padding:0;margin:0;");
	}
	
	
	function generar_html_barra_vinculos()
 	{
 		//Obtiene el estado actual de la legajo y lo asigna a $estado_legajo
 		$filtro['id_trabajador']=$this->editable_id;
		
 		$rs= dao_consultas::get_datos_trabajador($filtro);		
		
 		$estado_trabajador='';
		
		$rs=current($rs);
		$estado_trabajador=$rs['estado'];
		
 		$grupos_zonas = array();
 		//EXPEDIENTE NUEVO
		$grupos_zonas['AL'] =array("103000337","103000339","103000347","103000342","103000345","103000344","103000343","103000340","103000341","103000348","103000349","103000346");
		//EXPEDIENTE ACTIVO
		
		foreach($this->items_vecinos as $item){
			if (in_array($item['item'], $grupos_zonas[$estado_trabajador]))
			{
				$vinculo = toba::vinculador()->crear_vinculo($item['item_proyecto'], $item['item'],
				array(), array('zona' =>true, 'menu'=>true, 'validar'=>false));
				echo $this->html_boton($vinculo, $item['imagen'], $item['nombre'],'width:75px;height:60px;white-space:normal');	
			}
		}
		
		function generar_html_barra_id()
		{
			if(isset($this->editable_id))
			{
				if (!empty($rs)) {
					 $rs=current($rs);
					 $rs['nombre']=$rs['numero'] ;
					 echo $rs['nombre'];
				}
			}
		}

	}
}
