<?php
class ei_frm_datos_generales extends nominas_ei_formulario
{
    function generar_layout()
	{
		$this->generar_html_ef('apeynom');
		Echo" <table>
		<tr>
			<td>";echo" <b> Tipo documento </b>";
				$this->generar_input_ef('id_tipo_dni');echo"</td>
			<td>";echo" <b> Número documento </b>";
				$this->generar_input_ef('numero_dni');echo"</td>
		</tr>
		<tr>
			<td>";echo" <b> Obra social </b>";
				$this->generar_input_ef('id_obra_social');echo"</td>
		</tr>
	
		<tr>
			<td>";echo" <b>Número seguridad social</b>";
				$this->generar_input_ef('numero_seguridad_social_a'); 
                $this->generar_input_ef('numero_seguridad_social'); 
                $this->generar_input_ef('numero_seguridad_social_b');echo"</td>
		</tr>
        </table>";
		echo"";
        $this->generar_html_ef('estado');
        $this->generar_html_ef('fecha_alta');
        $this->generar_html_ef('fecha_baja');
      /*  <tr>
			<td>";echo" <b> Fecha alta </b>	";
                $this->generar_input_ef('fecha_alta');echo"</td>
			<td>";echo" <b> Fecha baja </b>	";
                $this->generar_input_ef('fecha_baja');echo"</td>
		</tr>*/
        Echo" <table>
		
		<tr>
			<td>";echo" <b> Nombre calle </b>";
				$this->generar_input_ef('dom_nombre_calle');echo"</td>
			<td>";echo" <b> Número calle </b>";
				$this->generar_input_ef('dom_numero_calle');echo"</td>
		</tr>
		 </table>";
		echo"";
        $this->generar_html_ef('codigo_postal');
        Echo" <table>
		
		<tr>
			<td>";echo" <b> Pais </b>";
				$this->generar_input_ef('id_pais');echo"
			";echo" <b> Provincia </b>";
				$this->generar_input_ef('id_provincia');echo"
			";echo" <b> Localidad </b>";
				$this->generar_input_ef('id_localidad');echo"</td>
		</tr>
        </table>";
		echo"";
        
        Echo" <table>
		<tr>
			<td>";echo" <b> Código teléfono </b>";
				$this->generar_input_ef('codigo_telefono');echo"</td>
			<td>";echo" <b> Número teléfono </b>";
				$this->generar_input_ef('numero_telefono');echo"</td>
		</tr>
		<tr>
			<td>";echo" <b> Código celular </b>	";
				$this->generar_input_ef('codigo_celular');echo"</td>
                <td>";echo" <b> Número celular </b>	";
				$this->generar_input_ef('numero_celular');echo"</td>
		</tr>
        </table>";
		echo"";
			
		$this->generar_html_ef('email');
	}

}
?>