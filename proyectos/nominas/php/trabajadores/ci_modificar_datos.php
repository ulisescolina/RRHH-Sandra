<?php
class ci_modificar_datos extends nominas_ci
{
	protected $s__datos_generales;
	protected $s__datos_personales;
	protected $s__situacione;
	protected $s__fecha_actual;
	protected $s__hijos;
	protected $s__id_trabajador;
	protected $s__datos_trabajador;
	protected $s__datos_situaciones;
	protected $s__datos_hijos;
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
			$this->s__datos_trabajador=dao_consultas::get_datos_trabajador(array('id_trabajador'=>$this->s__id_trabajador));
			//$this->s__datos_situaciones=dao_consultas::get_datos_situaciones(array('id_trabajador'=>$this->s__id_trabajador));
					
			$this->get_relacion()->cargar(array('id_trabajador'=>$this->s__id_trabajador));
        }
		//$this->s__datos_expediente = $this->cn()->get_cabecera();
	}
	/*function ini__operacion()
	{
		if (toba::memoria()->get_parametro('id_trabajador') != '' ) {
			$this->s__id_trabajador= toba::memoria()->get_parametro('id_trabajador');
			$this->s__datos_trabajador=dao_consultas::get_datos_trabajador(array('id_trabajador'=>toba::memoria()->get_parametro('id_trabajador')));
			$this->s__datos_situaciones=dao_consultas::get_datos_situaciones(array('id_trabajador'=>toba::memoria()->get_parametro('id_trabajador')));
			$this->s__datos_hijos=dao_consultas::get_datos_hijos(array('id_trabajador'=>toba::memoria()->get_parametro('id_trabajador')));
			
			$this->get_relacion()->cargar(array('id_trabajador'=>toba::memoria()->get_parametro('id_trabajador')));
        }
	}*/
	function get_localidades($id_prov)
	{
		return dao_consultas::get_localidades(array('id_provincia'=>$id_prov));
	}
	function get_basico($id_categoria)
	{
		$datos =dao_consultas::get_categorias(array('id_categoria'=>$id_categoria));
		return $datos[0]['basico'];
	
	}
	function resetear()
	{
		$this->dep('dr_trabajadores')->resetear();

	}
	function get_relacion(){
		return $this->dependencia('dr_trabajadores');
	}
	//-----------------------------------------------------------------------------------
	//---- Configuraciones --------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function evt__procesar()
	{
		$edad=dao_consultas::get_calcula_edad($this->s__datos_personales['fecha_nacimiento']);
		if($edad < 14){
			throw new toba_error('La edad del trabajador debe ser igual o mayo a 14');
		}
		$this->s__datos_generales['id_trabajador']=$this->s__id_trabajador;
		$this->s__datos_personales['id_trabajador']=$this->s__id_trabajador;
		$datos = array_merge($this->s__datos_generales,$this->s__datos_personales);
		
		$this->dep('dr_trabajadores')->tabla('trabajadores')->set($datos);
		/*
		if($this->s__situaciones!=null){
			$this->s__situaciones['id_situacion']=$this->s__datos_situaciones[0]['id_situacion'];
			$this->s__situaciones['id_trabajador']=$this->s__id_trabajador;
			$xdb_clave=$this->s__situaciones['x_dbr_clave'];
			if($xdb_clave !=null){
				$this->dep('dr_trabajadores')->tabla('situaciones')->modificar_fila($xdb_clave,$this->s__situaciones);
			}elseif($xdb_clave ==null){
				$this->dep('dr_trabajadores')->tabla('situaciones')->set($this->s__situaciones);
			}
		}
		if($this->s__hijos!=null){
			$this->dep('dr_trabajadores')->tabla('hijos')->procesar_filas($this->s__hijos);
			$this->dep('dr_trabajadores')->tabla('hijos')->resetear_cursor();
		}
		*/
		$this->dep('dr_trabajadores')->sincronizar();
		$this->resetear();
		
		toba::vinculador()->navegar_a(null,103000338,array('id_trabajador'=>$this->s__id_trabajador));
	}

	//-----------------------------------------------------------------------------------
	//---- frm_datos_generales ----------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__frm_datos_generales(nominas_ei_formulario $form)
	{
		$this->get_relacion()->tabla('trabajadores')->get();
		$form->set_datos($this->s__datos_trabajador[0]);
	}

	function evt__frm_datos_generales__modificacion($datos)
	{
			$this->s__datos_generales=$datos;
	}

	//-----------------------------------------------------------------------------------
	//---- frm_datos_personales ---------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__frm_datos_personales(ei_frm_datos_personales $form)
	{
		$form->set_datos($this->s__datos_trabajador[0]);
	}

	function evt__frm_datos_personales__modificacion($datos)
	{
		$this->s__datos_personales=$datos;
	}

	//-----------------------------------------------------------------------------------
	//---- frm_situaciones --------------------------------------------------------------
	//-----------------------------------------------------------------------------------
/*
	function conf__frm_situaciones(nominas_ei_formulario $form)
	{
		$fila=$this->get_relacion()->tabla('situaciones')->get_filas();
		if(isset($fila) && count($fila)>0){
			$form->set_datos($fila[0]);
		}
	}

	function evt__frm_situaciones__modificacion($datos)
	{
		$this->s__situaciones=$datos;
	}
*/
	//-----------------------------------------------------------------------------------
	//---- ml_hijos ---------------------------------------------------------------------
	//-----------------------------------------------------------------------------------
/*
	function conf__ml_hijos(nominas_ei_formulario_ml $form_ml)
	{
		$filas=$this->get_relacion()->tabla('hijos')->get_filas();
		if(isset($filas) && count($filas)>0){
			$form_ml->set_datos($filas);
		}
	}
	
	function evt__ml_hijos__modificacion($datos)
	{
		$this->s__hijos=$datos;
	}
	*/
	
	function evt__cancelar()
	{
		toba::vinculador()->navegar_a(null,103000338,array('id_trabajador'=>$this->s__id_trabajador));
	}

}
?>