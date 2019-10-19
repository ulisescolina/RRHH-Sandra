<?php
class ci_situacion_laboral extends nominas_ci
{
    protected $s__fecha_actual;
	protected $s__seleccion;
	protected $s__id_trabajador;
    protected $s__datos_situacion;

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
			$this->get_relacion()->cargar(array('id_trabajador'=>$this->s__id_trabajador));
        }
        $this->s__datos_situacion=$this->get_relacion()->tabla('situaciones')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
	}
    function resetear()
	{
		$this->dep('dr_trabajadores')->resetear();

	}
	function get_relacion(){
		return $this->dependencia('dr_trabajadores');
	}
	function evt__cancelar()
	{
        toba::vinculador()->navegar_a(null,103000338,array('id_trabajador'=>$this->s__id_trabajador));
	}
    function ini__operacion()
	{
		$this->s__fecha_actual= new toba_fecha();
	}
	//-----------------------------------------------------------------------------------
	//---- cuadro -----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('situaciones')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){

            foreach ($fila as $clave => $valor) {
                $buscarte=dao_consultas::get_licencias(array('id_licencia'=>$fila[$clave]['id_licencia']));
                $fila[$clave]['licencia'] = $buscarte[0]['nombre'];
            }
			$cuadro->set_datos($fila);
		}
	}

	function evt__cuadro__seleccion($seleccion)
	{
        $this->s__seleccion=$seleccion;
	}
    function get_basico($id_categoria)
	{
		$datos =dao_consultas::get_categorias(array('id_categoria'=>$id_categoria));
		return $datos[0]['basico'];

	}
	//-----------------------------------------------------------------------------------
	//---- formulario -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__formulario(nominas_ei_formulario $form)
	{
        $datos ="";

        if(isset($this->s__datos_situacion[0])){//Se esta editando un registro
            $this->dep("formulario")->eliminar_evento('alta');

            $datos = $this->s__datos_situacion[0];//$this->get_datos($this->s__seleccion);

            $buscarte=dao_consultas::get_licencias(array('id_licencia'=>$datos['id_licencia']));
            $datos['id_tipo_licencia'] = $buscarte[0]['id_tipo_licencia'];

        }else{//Es un registro nuevo
            $this->dep("formulario")->eliminar_evento('baja');
            $this->dep("formulario")->eliminar_evento('modificacion');
            //$datos['fecha_desde'] = $this->s__fecha_actual->get_fecha_db();
            //$datos['fecha_hasta'] = $this->s__fecha_actual->get_fecha_db();
        }
        $form->set_datos($datos);

	}

	function evt__formulario__alta($datos)
	{
        try{
            $id = $this->agregar_datos($datos);
            $this->dep('dr_trabajadores')->sincronizar();
            $this->resetear();
            toba::vinculador()->navegar_a(null,103000338,array('id_trabajador'=>$this->s__id_trabajador));

        }catch(toba_error $e){
            $this->eliminar_licencias_trabajadores($id);
            throw new toba_error('Ya se ha registrado este dato');
        }

	}
    function get_datos($id) {
        $this->get_relacion()->tabla('situaciones')->set_cursor($id);
        return $this->get_relacion()->tabla('situaciones')->get();
    }

    function agregar_datos($dato) {
        $id = $this->get_relacion()->tabla('situaciones')->nueva_fila($dato);
		return $id;
    }
     function eliminar_datos($id) {
        $this->$this->get_relacion()->tabla('situaciones')->eliminar_fila($id);
    }
    function modificar_datos($id, $dato, $mod) {
        $this->get_relacion()->tabla('situaciones')->set_cursor($id);
        $this->get_relacion()->tabla('situaciones')->set($dato);
    }
    function modificar_datos_situacion($datos_actualizar)
	{
		$filtro['id_situacion'] = $datos_actualizar['id_situacion'];
		$datos = $this->get_relacion()->tabla('situaciones')->get_filas($filtro);

		if (count($datos) > 0) {
		        $x_dbr_clave = $datos[0]['x_dbr_clave'];
			$this->get_relacion()->tabla('situaciones')->set_cursor($x_dbr_clave);
			$this->get_relacion()->tabla('situaciones')->modificar_fila($x_dbr_clave, $datos_actualizar);
		}
	}
	function evt__formulario__baja()
	{
        if(isset($this->s__seleccion)){
            $this->eliminar_datos($this->s__seleccion);
            $this->dep('dr_trabajadores')->sincronizar();
            $this->resetear();

        }
        unset($this->s__seleccion);
	}

	function evt__formulario__modificacion($datos)
	{
        $datos['id_situacion']=$this->s__datos_situacion[0]['id_situacion'];
        $this->modificar_datos_situacion($datos);
        $this->dep('dr_trabajadores')->sincronizar();
        $this->resetear();
        toba::vinculador()->navegar_a(null,103000338,array('id_trabajador'=>$this->s__id_trabajador));
        //unset($this->s__seleccion);
	}

	function evt__formulario__cancelar()
	{
         unset($this->s__seleccion);
	}
}

?>
