<?php

class dao_consultas
{
	
// funcion usada para validar si son numericos los datos q vienen de formularios
	function es_numerico($dato)
	{
		if(is_numeric($dato)){
			return true;
		}
		else{
			return false;
		}
	}
	function get_where_campo_multibusqueda($busqueda, $campo)
	{
		$filtro['campo_multibusqueda'] = $busqueda;
		$partes_busqueda = explode(" ",$busqueda);
		foreach($partes_busqueda as $clave => $valor)
		{
			$valor = quote("{$valor}%");
			$partes_busqueda[$clave] = " translate($campo,'áéíóúñÁÉÍÓÚÑ','aeiounaeioun') ILIKE " . self::limpiar_acentos($valor) ;
			$partes_busqueda[$clave] = " $campo ILIKE " . $valor ;
		}
		$filtro['where'] = implode("AND", $partes_busqueda);
		return $filtro;
	}
	/*
	 * Elimina los caracteres espa?oles como acentros  y enies
	 * Si no se utiliza est? funcion en los links que tienen acentos o enies se genera un error al intentar abrir el enlace en sistemas unix.
	*/
	
	function limpiar_acentos($string)
	{
		$string = str_replace("[á]","a",$string);
		$string = str_replace("[Á]","A",$string);
		$string = str_replace("[é]","e",$string);
		$string = str_replace("[É]","E",$string);
		$string = str_replace("[í]","i",$string);
		$string = str_replace("[Í]","I",$string);
		$string = str_replace("[ó]","o",$string);
		$string = str_replace("[Ó]","O",$string);
		$string = str_replace("[ú]","u",$string);
		$string = str_replace("[Ú]","U",$string);
		$string = str_replace(" ","_",$string);
		$string = str_replace("ñ","n",$string);
		$string = str_replace("Ñ","N",$string);
		$string = preg_replace("/\&(.)°[^;]*;/", "\\1", $string);
		$string = preg_replace("/[ ]/", "_", $string);
		
		return $string;
	}

	//devulve una cadena con barras invertidas delante de los caracteres q necesitan escaparse.
	function quote($cadena)
	{
		return addslashes($cadena);
	}

function get_formas_cotizacion($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND fc.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			fc.id_forma_cotizacion
			,fc.nombre
		FROM
			formas_cotizacion as fc
		WHERE
			TRUE
			$where
		ORDER BY fc.nombre ASC;";
	return consultar_fuente($sql);
}


function get_grupos_cotizaciones($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND gc.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			gc.id_grupo_cotizacion
			,gc.nombre
		FROM
			grupos_cotizaciones as gc
		WHERE
			TRUE
			$where
		ORDER BY gc.nombre ASC;";
	return consultar_fuente($sql);
}

function get_tipos_documentos($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND td.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			tipo_persona,
			nombre,
			descripcion,
			id_tipo_documento,
			nombre || ' - ' || descripcion as nomydesc
		FROM
			tipos_documentos as td
		WHERE
			TRUE
			AND tipo_persona='FISICA' AND id_tipo_documento < 100
			$where
		ORDER BY td.nombre ASC;";
	return consultar_fuente($sql);
}

function get_categorias($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND c.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['id_categoria'])){
		
		$where .=" AND c.id_categoria = {$filtro['id_categoria']}";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_categoria,
			nombre,
			basico
		FROM
			categorias as c
		WHERE
			TRUE
			AND partida = 4
			$where
		ORDER BY c.id_categoria ASC;";
	return consultar_fuente($sql);
}
function get_categorias_x_convenio($id_convenio)
{
	$sql = "SELECT
			id_categoria,
			nombre,
			basico
		FROM
			categorias as c
		WHERE
			TRUE
			AND partida = 4
			AND id_convenio=$id_convenio
		ORDER BY c.id_categoria ASC;";
	return consultar_fuente($sql);
}
function get_tipos_parientes($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND tp.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_tipo_parentesco,
			nombre
		FROM
			tipos_parientes as tp
		WHERE
			TRUE
			$where
		ORDER BY tp.id_tipo_parentesco ASC;";
	return consultar_fuente($sql);
}

function get_estados_civiles($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND ec.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_estado_civil,
			nombre
		FROM
			estados_civiles as ec
		WHERE
			TRUE
			$where
		ORDER BY ec.nombre ASC;";
	return consultar_fuente($sql);
}

function get_provincias_por_pais($id_pais)
	{
		if (! isset($id_pais)) {
			return null;
	    }
		$sql = "SELECT
				p.id_provincia
				,p.nombre
			FROM
				provincias as p
			WHERE
				id_pais = $id_pais
			ORDER BY p.nombre ASC;";
		return consultar_fuente($sql);
	}
	function get_localidades($filtro = array())
	{
		$where='';
		if(isset($filtro['nombre'])){
			$filtro['nombre']=dao_consultas::quote($filtro['nombre']);
			$where .= "AND l.nombre ILIKE '%{$filtro['nombre']}%'";
		}
		if(isset($filtro['id_localidad'])){
			$where .= " AND l.id_localidad = {$filtro['id_localidad']} ";
		}
		if(isset($filtro['id_provincia'])){
			$where .= " AND l.id_provincia = {$filtro['id_provincia']} ";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql= "SELECT
				l.id_localidad
				,l.nombre
				
				,p.nombre as provincia
				,p.id_provincia
			FROM
				localidades as l
				,provincias as p
			WHERE
			TRUE
				$where
				AND p.id_provincia = l.id_provincia
			ORDER BY l.nombre ASC;";
		return consultar_fuente($sql);
	}
	function get_localidad_filtro($filtro=null, $id_provincia)
	{
		$where = '';
		if(!is_array($filtro) && $filtro != ''){
			$filtro = self::get_where_campo_multibusqueda($filtro,'localidades.nombre');
		}
		if(isset($filtro['where'])){
			$where .= ' AND ' . $filtro['where'];
		}
		$sql = "SELECT
					id_localidad
					,nombre
				FROM
					localidades
				WHERE
					TRUE
				AND
					id_provincia = $id_provincia
					$where
		";
		return consultar_fuente($sql);

	}
	
	function get_localidad($id_localidad=null)
	{
		if (! isset($id_localidad)) {
			return array();
		}
		$sql = "SELECT
				id_localidad
				,nombre
			FROM
				localidades
			WHERE
				id_localidad = $id_localidad";
		$result = consultar_fuente($sql);
		if (! empty($result)) {
			return $result[0]['nombre'];
		}
	}
	function get_paises($filtro = array())
	{
		$where='';
		if(isset($filtro['nombre'])){
			$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
			$where .=" AND p.nombre ILIKE '%{$filtro['nombre']}%'";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				id_pais,
				nombre
			FROM
				paises as p
			WHERE
				TRUE
				$where
			ORDER BY p.nombre ASC;";
		return consultar_fuente($sql);
	}
	
	function get_profesiones($filtro = array())
	{
		$where='';
		if(isset($filtro['nombre'])){
			$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
			$where .=" AND p.nombre ILIKE '%{$filtro['nombre']}%'";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				id_profesion,
				nombre
			FROM
				profesiones as p
			WHERE
				TRUE
				$where
			ORDER BY p.nombre ASC;";
		return consultar_fuente($sql);
	}
	
	function get_convenios($filtro = array())
	{
		$where='';
		if(isset($filtro['nombre'])){
			$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
			$where .=" AND c.nombre ILIKE '%{$filtro['nombre']}%'";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				id_convenio,
				nombre
			FROM
				convenios as c
			WHERE
				TRUE
				$where
			ORDER BY c.nombre ASC;";
		return consultar_fuente($sql);
	}
	function get_departamentos($filtro = array())
	{
		$where='';
		if(isset($filtro['id_departamento'])){
			$where .=" AND d.id_departamento = {$filtro['id_departamento']}";
		}
		if(isset($filtro['nombre'])){
			$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
			$where .=" AND d.nombre_corto ILIKE '%{$filtro['nombre']}%'";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				id_departamento,
				upper(nombre_largo) as nombre_largo
			FROM
				departamentos as d
			WHERE
				TRUE
				AND id_localidad =1
				AND idinstancia=1
				$where
			ORDER BY d.nombre_corto ASC;";
		return consultar_fuente($sql);
	}
	
	function get_listado_trabajador($filtro = array())
	{
		$where='';
		if(isset($filtro['apeynom'])){
			$filtro['apeynom'] = dao_consultas::quote($filtro['apeynom']);
			$where .=" AND t.apeynom ILIKE '%{$filtro['apeynom']}%'";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				t.id_trabajador,
				td.nombre  as tipo_dni,
				t.numero_dni,
				t.apeynom,
				CASE t.estado WHEN 'BA' THEN 'BAJA' ELSE 'ALTA' END as nombre_estado,
				t.fecha_alta,
				t.dom_nombre_calle || ' Num Calle: ' || t.dom_numero_calle as domicilio,
				t.dom_nombre_edificio  || ' Num Piso: ' || t.dom_numero_piso as edificio,
				t.codigo_telefono || ' - ' || t.numero_telefono as tel,
				t.codigo_celular || ' - ' || 	t.numero_celular as cel
			FROM
				trabajadores as t, tipos_documentos as td, situaciones as s
			WHERE
				TRUE
				AND t.id_tipo_dni=td.id_tipo_documento
				AND t.id_trabajador = s.id_trabajador
				$where
			ORDER BY t.apeynom ASC;";
		return consultar_fuente($sql);
	}
	function get_datos_del_trabajador($filtro = array())
	{
		$where='';
		if(isset($filtro['nombre'])){
			$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
			$where .=" AND t.apeynom ILIKE '%{$filtro['nombre']}%'";
		}
		if(isset($filtro['id_trabajador'])){
			$where .=" AND t.id_trabajador = {$filtro['id_trabajador']}";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				t.id_trabajador,
				td.nombre || ' - ' || td.descripcion as tipo_dni,
				t.numero_dni,
				td.nombre || ' - ' || t.numero_dni as nombreynum,
				os.nombre  || ' - ' || t.numero_seguridad_social_a || ''|| t.numero_seguridad_social ||'' || t.numero_seguridad_social_b as os_numero_seguridad_social,
				t.apeynom,
				CASE t.estado WHEN 'BA' THEN 'BAJA' ELSE 'ALTA' END as nombre_estado,
				t.fecha_alta,
				t.fecha_baja,
				t.codigo_telefono || ' - ' || t.numero_telefono as tel,
				t.codigo_celular || ' - ' || 	t.numero_celular as cel,
				t.codigo_postal,
				t.id_localidad,
				l.nombre as nombre_localidad,
				t.email,
				t.fecha_nacimiento,
				t.porcentaje_minusvalia,
				t.nombre_padre,
				t.nombre_madre,
				CASE t.sexo WHEN 'F' THEN 'FEMENINO' ELSE 'MASCULINO' END nombre_sexo,
				t.estado_civil,
				ec.nombre as nombre_estado_civil,
				t.observaciones,
				s.id_situacion,
				s.id_forma_cotizacion,
				fc.nombre as nombre_forma_cotizacion,
				s.id_convenio,
				co.nombre as nombre_convenio,
				s.id_categoria,
				ca.nombre || ' Básico: $' ||  ca.basico as nombre_categoria,
				ca.nombre as categoriaynombre,
				s.id_grupo_cotizacion,
				gc.nombre as nombre_grupo_cotizacion,
				s.id_ocupacion,
				oc.nombre as nombre_ocupacion,
				s.id_departamento,
				d.nombre_largo as nombre_departamento
			FROM
				trabajadores as t
				LEFT JOIN tipos_documentos as td
				ON t.id_tipo_dni = td.id_tipo_documento
				LEFT JOIN localidades as l
				ON t.id_localidad = l.id_localidad
				LEFT JOIN estados_civiles as ec
				ON t.estado_civil = ec.id_estado_civil
				LEFT JOIN situaciones as s
				ON t.id_trabajador =s.id_trabajador
				LEFT JOIN formas_cotizacion as fc
				ON s.id_forma_cotizacion = fc.id_forma_cotizacion
				LEFT JOIN grupos_cotizaciones as gc
				ON s.id_grupo_cotizacion = gc.id_grupo_cotizacion
				LEFT JOIN convenios as co
				ON s.id_convenio = co.id_convenio
				LEFT JOIN categorias as ca
				ON s.id_categoria = ca.id_categoria
				LEFT JOIN profesiones as oc
				ON s.id_ocupacion =oc.id_profesion
				LEFT JOIN departamentos as d
				ON s.id_departamento = d.id_departamento
				LEFT JOIN obras_sociales as os
				ON t.id_obra_social = os.id_obra_social
			WHERE
				TRUE 
				$where
			ORDER BY t.apeynom ASC;"; 
		$expedientes = consultar_fuente($sql);
		foreach($expedientes as $clave => $expediente){
			
				$domi= self::get_domicilios(array('id_trabajador'=>$expedientes[$clave]['id_trabajador']));
		
				$expedientes[$clave]['domicilio']=$domi[0]['domicilio_calle'] . ' Num Calle: ' .$domi[0]['domicilio_num'];
			
			
			
		}
		return $expedientes;
	
	}
	function get_datos_trabajador($filtro = array())
	{
		$where='';
		if(isset($filtro['id_trabajador'])){
			$where .=" AND t.id_trabajador = {$filtro['id_trabajador']}";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				*
				,l.id_provincia
				,p.id_pais
				FROM
						trabajadores as t
						left join localidades as l
						on l.id_localidad = t.id_localidad
						left join provincias as p
						on p.id_provincia = l.id_provincia
				WHERE
						TRUE 
						$where
			ORDER BY t.apeynom ASC;";
		return consultar_fuente($sql);
	}
	function get_datos_situaciones($filtro = array())
	{
		$where='';
		if(isset($filtro['id_trabajador'])){
			$where .=" AND s.id_trabajador = {$filtro['id_trabajador']}";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				*
				FROM
						situaciones as s
				WHERE
						TRUE 
						$where
			;"; 
		return consultar_fuente($sql);
	}
	function get_datos_hijos($filtro = array())
	{
		$where='';
		if(isset($filtro['id_trabajador'])){
			$where .=" AND h.id_trabajador = {$filtro['id_trabajador']}";
		}
		if(isset($filtro['where'])){
			$where .= 'AND' . $filtro['where'];
		}
		$sql = "SELECT
				*
				FROM
						hijos as h
				WHERE
						TRUE 
						$where
			;"; 
		return consultar_fuente($sql);
	}
	static function generar_pie_pagina()
	{
		
		$server=toba::memoria()->get_dato('web_server_name');
		echo "</div>";		
		echo "<div class='login-pie'>";
		echo "<div><strong>Departamento de Recursos Humanos</strong></div>
			<div>Secretar&iacute;a de Recursos Humanos - </a></strong><strong><a href='http://jusmisiones.gov.ar' style='text-decoration: none' target='_blank'> STJ </a></strong></div>
			";
		echo "
		<font size=2>Email asistencia: soporte_nominas@jusmisiones.gov.ar</font>
		<div><strong>RR.HH.</strong>$server</div>
		</div>";
		
		
	}
	function get_obras_sociales($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND os.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_obra_social,
			nombre
		FROM
			obras_sociales as os
		WHERE
			TRUE
			$where
		ORDER BY os.nombre ASC;";
	return consultar_fuente($sql);
}
function get_resultados_examenes($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND re.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['id_resultado'])){
		$where .=" AND re.id_resultado ={$filtro['id_resultado']}";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_resultado,
			nombre,
			descripcion
		FROM
			resultados_examenes as re
		WHERE
			TRUE
			$where
		ORDER BY re.id_resultado ASC;";
	return consultar_fuente($sql);
}
function get_tipos_licencias($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND tl.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_tipo_licencia,
			nombre
		FROM
			tipos_licencias as tl
		WHERE
			TRUE
			$where
		ORDER BY tl.id_tipo_licencia ASC;";
	return consultar_fuente($sql);
}
function get_licencias_x_tipo($id_tipo_licencia)
{
	$sql = "SELECT
			id_licencia,
			nombre
		FROM
			licencias as l
		WHERE
			TRUE
			AND id_tipo_licencia =$id_tipo_licencia
		ORDER BY l.id_licencia ASC;";
	return consultar_fuente($sql);
}
function get_licencias($filtro = array())
{
	$where='';
	if(isset($filtro['id_licencia'])){
		
		$where .=" AND tl.id_licencia = {$filtro['id_licencia']}";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_licencia,
			nombre,
			id_tipo_licencia
		FROM
			licencias as tl
		WHERE
			TRUE
			$where
		ORDER BY tl.id_licencia ASC;";
	return consultar_fuente($sql);
}
function get_tipos_asignaciones($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND t.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['id_tipo_asignacion'])){
		$where .=" AND t.id_tipo_asignacion ={$filtro['id_tipo_asignacion']}";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_tipo_asignacion,
			nombre
		FROM
			tipos_asignaciones as t
		WHERE
			TRUE
			$where
		ORDER BY t.id_tipo_asignacion ASC;";
	return consultar_fuente($sql);
}
function get_tipos_certificados($filtro = array())
{
	$where='';
	if(isset($filtro['nombre'])){
		$filtro['nombre'] = dao_consultas::quote($filtro['nombre']);
		$where .=" AND t.nombre ILIKE '%{$filtro['nombre']}%'";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_tipo_certificado,
			nombre
		FROM
			tipos_certificados as t
		WHERE
			TRUE
			$where
		ORDER BY t.id_tipo_certificado ASC;";
	return consultar_fuente($sql);
}
function get_calcula_edad($fecha) {
		list($Y,$m,$d) = explode("-",$fecha);
		return( date("md") < $m.$d ? date("Y")-$Y-1 : date("Y")-$Y );
	}

function get_tipos_examenes($filtro = array())
{
	$where='';
	if(isset($filtro['id_tipo_examen'])){
		$where .=" AND t.id_tipo_examen = {$filtro['id_tipo_examen']}";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			id_tipo_examen,
			nombre
		FROM
			tipos_examenes as t
		WHERE
			TRUE
			$where
		ORDER BY t.id_tipo_examen ASC;";
	return consultar_fuente($sql);
}
function max_id_trabajador(){
	$sql = "SELECT
			max(id_trabajador) as id_trabajador
			FROM
				trabajadores as t;";
	$id= consultar_fuente($sql);
	return $id[0];
}
function get_domicilios($filtro = array())
{
	$where='';
	if(isset($filtro['id_trabajador'])){
		$where .=" AND t.id_trabajador = {$filtro['id_trabajador']}";
	}
	if(isset($filtro['where'])){
		$where .= 'AND' . $filtro['where'];
	}
	$sql = "SELECT
			domicilio_calle,
			domicilio_num,
			fecha
		FROM
			domicilios as t
		WHERE
			TRUE
			$where
			AND estado ='AC';";
	return consultar_fuente($sql);
}
}
?>
