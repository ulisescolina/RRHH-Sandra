<?php
class ci_nuevo_trabajador extends nominas_ci
{
	protected $s__datos_generales;
	protected $s__datos_personales;
	protected $s__situacioens;
	protected $s__fecha_actual;
	protected $s__hijos;
	//-----------------------------------------------------------------------------------
	//---- frm_datos_generales ----------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__frm_datos_generales(nominas_ei_formulario $form)
	{
		$datos['fecha_alta'] = $this->s__fecha_actual->get_fecha_db();
		$datos['fecha_baja'] = $this->s__fecha_actual->get_fecha_db();
		if(isset($this->s__datos_generales)){
			$form->set_datos($this->s__datos_generales);
		}else{
			$form->set_datos($datos);
		}
		
	}

	function evt__frm_datos_generales__modificacion($datos)
	{
		$this->s__datos_generales=$datos;
	}

	//-----------------------------------------------------------------------------------
	//---- frm_datos_personales ---------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__frm_datos_personales(nominas_ei_formulario $form)
	{
		$datos['fecha_nacimiento'] = $this->s__fecha_actual->get_fecha_db();
		if(isset($this->s__datos_personales)){
			$form->set_datos($this->s__datos_personales);
		}else{
			$form->set_datos($datos);
		}
	}

	function evt__frm_datos_personales__modificacion($datos)
	{
		$this->s__datos_personales=$datos;
	}
	function get_localidades($id_prov)
	{
		return dao_consultas::get_localidades(array('id_provincia'=>$id_prov));
	}
	function get_basico($id_categoria)
	{
		$datos =dao_consultas::get_categorias(array('id_categoria'=>$id_categoria));
		return $datos[0]['basico'];
	
	}
	//-----------------------------------------------------------------------------------
	//---- frm_situaciones --------------------------------------------------------------
	//-----------------------------------------------------------------------------------
/*
	function conf__frm_situaciones(nominas_ei_formulario $form)
	{
		if(isset($this->s__situacioens)){
			$form->set_datos($this->s__situacioens);
		}
	}

	function evt__frm_situaciones__modificacion($datos)
	{
		$this->s__situacioens=$datos;
	}
*/
	function ini__operacion()
	{
		$this->s__fecha_actual= new toba_fecha();
	}

	//-----------------------------------------------------------------------------------
	//---- Configuraciones --------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf()
	{
	}

	//-----------------------------------------------------------------------------------
	//---- Eventos ----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function evt__procesar()
	{
		$edad=dao_consultas::get_calcula_edad($this->s__datos_personales['fecha_nacimiento']);
		if($edad < 14){
			throw new toba_error('La edad del trabajador debe ser igual o mayo a 14');
		}
		if($this->s__datos_personales!=null){
			$datos = array_merge($this->s__datos_generales,$this->s__datos_personales);
		}else{
			$datos=$this->s__datos_generales;
		}
		$this->dep('dr_trabajadores')->tabla('trabajadores')->set($datos);
		$d['domicilio_calle']=$this->s__datos_generales['dom_nombre_calle'];
		$d['domicilio_num']=$this->s__datos_generales['dom_numero_calle'];
		$d['fecha']=$this->s__datos_generales['fecha_alta'];
		$this->dep('dr_trabajadores')->tabla('domicilios')->set($d);
		/*
		if($this->s__situacioens!=null){
		
			$this->dep('dr_trabajadores')->tabla('situaciones')->set($this->s__situacioens);
		}
		
		if($this->s__hijos!=null){
		
			$this->dep('dr_trabajadores')->tabla('hijos')->procesar_filas($this->s__hijos);
		}*/
		$this->dep('dr_trabajadores')->sincronizar();
		//$dato_trab=$this->get_relacion()->tabla('trabajadores')->get();
		//ei_arbol($dato_trab);
		$this->resetear();
		$id_trabajador=dao_consultas::max_id_trabajador();
		toba::vinculador()->navegar_a(null,103000338,$id_trabajador);
	}
	function resetear()
	{
		$this->dep('dr_trabajadores')->resetear();

	}
	function evt__cancelar()
	{
	}
	/*
	function extender_objeto_js(){
		echo"
			
			{$this->objeto_js}.actualizar_tab = function()
			{
				var hijos = this.dep('frm_datos_personales').ef('hijos').get_estado();
				this.ajax('actaulizar_tabulador', hijos, this, this.actualizo);
				return false;
			}
			{$this->objeto_js}.actualizo = function()
			{
				alert('holaaa');
			}
		"
		;
	}
	function ajax__actaulizar_tabulador($parametro,toba_ajax_respuesta $re){
		$this->dep('nuevo_traajador')->pantalla()->tab('pant_hijos')->ocultar();
	}*/
	//-----------------------------------------------------------------------------------
	//---- ml_hijos ---------------------------------------------------------------------
	//-----------------------------------------------------------------------------------
/*
	function conf__ml_hijos(nominas_ei_formulario_ml $form_ml)
	{
	}

	function evt__ml_hijos__modificacion($datos)
	{
		$this->s__hijos=$datos;
	}*/

}
?>