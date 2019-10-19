<?php
class ci_legajo extends nominas_ci
{
    protected $s__id_trabajador;
    protected $s__datos_trabajador;
    
    function conf()
	{
		if (toba::zona()->cargada()) {
			$this->s__id_trabajador=toba::zona()->get_editable();
			//$this->cn()->cargar_expediente(array('id_expediente'=>$this->s__id_expediente));
			toba::zona()->resetear();
		}else{
			if (toba::memoria()->get_parametro('id_trabajador') != '' ) {
                $this->s__id_trabajador=toba::memoria()->get_parametro('id_trabajador');
                toba::memoria()->set_dato('id_trabajador',$this->s__id_trabajador);
			}
        }
        toba::zona()->cargar($this->s__id_trabajador);
        if ($this->s__id_trabajador != '' ) {		
			$this->get_relacion()->cargar(array('id_trabajador'=>$this->s__id_trabajador));
        }
        
        //esta consulta verrr es muy completa
		$this->s__datos_trabajador=dao_consultas::get_datos_del_trabajador(array('id_trabajador'=>$this->s__id_trabajador));
    
	}
    
    function ini__operacion()
	{
		if (toba::memoria()->get_parametro('id_trabajador') != '' ) {
			$this->s__id_trabajador= toba::memoria()->get_parametro('id_trabajador');
		}
	}
    
    function conf__formulario(nominas_ei_formulario $form)
	{
		if(isset($this->s__datos_trabajador)){
            if($this->s__datos_trabajador[0]['fecha_nacimiento'] !=null){
                $edad=dao_consultas::get_calcula_edad($this->s__datos_trabajador[0]['fecha_nacimiento']);
                $this->s__datos_trabajador[0]['edad']=$edad;
            }
			$form->set_datos($this->s__datos_trabajador[0]);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- situacion_laboral ------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__situacion_laboral(nominas_ei_formulario $form)
	{
        if(isset($this->s__datos_trabajador)){
			$form->set_datos($this->s__datos_trabajador[0]);
		}
	}
    function get_relacion(){
		return $this->dependencia('dr_trabajadores');
	}
	//-----------------------------------------------------------------------------------
	//---- cuadro_antecedentes ----------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_antecedentes(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('antecentes')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
            
                if ($fila[$clave]['posee_antecedente'] == 'S') {
                    $fila[$clave]['posee_antecedente'] = 'SI';
                } else {
                    $fila[$clave]['posee_antecedente'] = 'NO';
                }
            }
			$cuadro->set_datos($fila);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro_asig ------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_asig(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('asignaciones_flia_trabajador')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
                $buscar=dao_consultas::get_tipos_asignaciones(array('id_tipo_asignacion'=>$fila[$clave]['id_tipo_asignacion']));
                $fila[$clave]['asignacion'] = $buscar[0]['nombre'];
            }
			$cuadro->set_datos($fila);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro_conyugue --------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_conyugue(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('conyugue')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
                $buscar=dao_consultas::get_tipos_asignaciones(array('id_tipo_asignacion'=>$fila[$clave]['id_tipo_asignacion']));
                $fila[$clave]['asignacion'] = $buscar[0]['nombre'];
                
                if($fila[$clave]['sexo'] =='F'){
                   $fila[$clave]['sexo']='Femenino' ;
                }else{
                    $fila[$clave]['sexo']='Masculino';
                }
            }
			$cuadro->set_datos($fila);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro_dom -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_dom(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('domicilios')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
                if ($fila[$clave]['estado'] == 'AC') {
                    $fila[$clave]['estado'] = 'Actual';
                } else {
                    $fila[$clave]['estado'] = 'Anterior';
                }
            }
			$cuadro->set_datos($fila);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro_exam ------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_exam(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('examenes_trabajadores')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
                $buscarte=dao_consultas::get_tipos_examenes(array('id_tipo_examen'=>$fila[$clave]['id_tipo_examen']));
                $fila[$clave]['tipo_examen'] = $buscarte[0]['nombre'];
                
                $buscarre=dao_consultas::get_resultados_examenes(array('id_resultado'=>$fila[$clave]['id_resultado_examen']));
                $fila[$clave]['resultado_examen'] = $buscarre[0]['nombre'];
            }
			$cuadro->set_datos($fila);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro_hijo ------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_hijo(nominas_ei_cuadro $cuadro)
	{
        $filas=$this->get_relacion()->tabla('hijos')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($filas) && count($filas)>0){
            foreach ($filas as $clave => $valor) {
                if($filas[$clave]['fecha_nacimiento'] !=null){
                    $edad=dao_consultas::get_calcula_edad($filas[$clave]['fecha_nacimiento']);
                    $filas[$clave]['edad']=$edad;
                }
                if($filas[$clave]['sexo'] =='F'){
                   $filas[$clave]['sexo']='Femenino' ;
                }else{
                    $filas[$clave]['sexo']='Masculino';
                }
            }
			$cuadro->set_datos($filas);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro_Inasistencias ---------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_Inasistencias(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('inasistencias')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
            
                if ($fila[$clave]['justificada'] == 'J') {
                    $fila[$clave]['inasistencia'] = 'Justificada';
                }elseif($fila[$clave]['justificada'] == 'I') { 
                    $fila[$clave]['inasistencia'] = 'Injustificada';
                }else{
                    $fila[$clave]['inasistencia'] = 'Tardanza';
                }
            }
			$cuadro->set_datos($fila);
		}
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro_lic -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_lic(nominas_ei_cuadro $cuadro)
	{
        $fila=$this->get_relacion()->tabla('licencias_trabajadores')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
                $buscarte=dao_consultas::get_licencias(array('id_licencia'=>$fila[$clave]['id_licencia']));
                $fila[$clave]['licencia'] = $buscarte[0]['nombre'];
            }
			$cuadro->set_datos($fila);
		}
	}

    function vista_pdf(toba_vista_pdf $salida)
    {
            $salida->titulo('Legajo del empleado');
            $salida->separacion();
            $this->dependencia('formulario')->vista_pdf($salida);
            $salida->separacion();
            $this->dependencia('situacion_laboral')->vista_pdf($salida);
            $salida->separacion();
            $this->dependencia('cuadro_Inasistencias')->vista_pdf($salida);
            $salida->separacion();
            $this->dependencia('cuadro_lic')->vista_pdf($salida);
            $salida->separacion();
            $this->dependencia('cuadro_asig')->vista_pdf($salida);
            $salida->separacion();
            $this->dependencia('cuadro_antecedentes')->vista_pdf($salida);
             $salida->separacion();
            $this->dependencia('cuadro_conyugue')->vista_pdf($salida);
              $salida->separacion();
            $this->dependencia('cuadro_dom')->vista_pdf($salida);
            $salida->separacion();
            $this->dependencia('cuadro_exam')->vista_pdf($salida);

            $salida->separacion();
            $this->dependencia('cuadro_hijo')->vista_pdf($salida);
    }
	//-----------------------------------------------------------------------------------
	//---- cuadro_traslado --------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro_traslado(nominas_ei_cuadro $cuadro)
	{
         $fila=$this->get_relacion()->tabla('traslados')->get_filas(array('id_trabajador'=>$this->s__id_trabajador),false);
		if(isset($fila) && count($fila)>0){
            
            foreach ($fila as $clave => $valor) {
            
                if($fila[$clave]['tipo_traslado'] == 'D') {
                    $fila[$clave]['tipo_traslado'] = 'Definitivo';
                }else{ 
                    $fila[$clave]['tipo_traslado'] = 'Provisorio';
                }
                $dep=dao_consultas::get_departamentos(array('id_departamento'=>$fila[$clave]['id_departamento']));

                $fila[$clave]['id_departamento'] =$dep[0]['nombre_largo'];
            }
			$cuadro->set_datos($fila);
		}
	}

}
?>