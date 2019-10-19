<?php

class nomina_pagina extends toba_tp_basico_titulo
{
	protected $alto_cabecera = "34px";
	
	protected function comienzo_cuerpo()
	{
		parent::comienzo_cuerpo();
		$this->cabecera_nomina();
	}	

	function get_revision_svn($path)
	{
		$version_svn = toba::memoria()->get_dato_instancia('version_svn');
		if (! isset($version_svn)) {
			$cmd = "svn info \"$path\" --xml";
			$xml = simplexml_load_string(`$cmd`);
			if (isset($xml->entry)) {
				$version_svn = array();
				$version_svn['revision'] = (string) $xml->entry['revision'];
				$version_svn['fecha'] = (string) $xml->entry->commit->date;
				toba::memoria()->set_dato_instancia('version_svn', $version_svn);
			}
		}
		return $version_svn;
	}		
	
	function cabecera_nomina()
	{
		
		$dependencia = 'RECURSOS HUMANOS';
		$secretaria ='SECRETARIA DE RECURSOS HUMANOS';
		$instit = "&nbsp;";//parametros::get_valor_parametro("INSTITUCION");		
		$area="&nbsp;";//toba::usuario()->get_area_descripcion();
		if (toba::logger()->modo_debug()) {
			
		}
		$fecha = getdate();
		echo "
			<script>
				var now = new Date(" . 
							$fecha['year'] . "," . 
							$fecha['mon'] . "," .
							$fecha['mday'] . "," .
							$fecha['hours'] . "," . 
							$fecha['minutes'] . "," . 
							$fecha['seconds'] . ");
			
				function decodeDate(d) {
					day = d.getDate();
			   		if(day < 10)
						day = '0' + day;

					month = d.getMonth();
					if(month < 10)
						month = '0' + month;

					return day + '/' + month + '/' + d.getFullYear();
				}

				function decodeTime(t) {
					hours = t.getHours();
					if(hours < 10)
						hours = '0' + hours;
			   
					minutes = t.getMinutes();
			   		if(minutes < 10)
						minutes = '0' + minutes;
			   
					seconds = t.getSeconds();
			   		if(seconds < 10)
						seconds = '0' + seconds;

					return hours + ':' + minutes + ':' + seconds;
				}

				function initializeDate(){
			   		//document.date_form.date.value = decodeDate(now);
				}

				function Clock(){
			   		timerID = setTimeout(\"Clock()\", 1000);
				   	now.setSeconds(now.getSeconds()+1);
			   		document.clock_form.time.value = decodeTime(now);
				}
				function initializeClock(){
			   		Clock();
				}
				function downloadDoc(url){
					//alert(url+'&tcm=popup&tm=1');
					window.open(url+'&tcm=popup&tm=1');
				}

                /*$(function(){              

                	$( '#info_novedades' ).click(function() {
                		$('#tabla_novedades').toggle();
                	});

                    $( '#info_versiones' ).click(function() {
  
                        $('#tabla_versiones').toggle();
                        if($(this).hasClass('active')){
                            $(this).removeClass('active');
					        window.toba_prefijo_vinculo = '?ah=st53fc7e9e35907&ai=nomina||107000093&tcm=previsualizacion';
					        obj = new Array('nomina', '107000463');
							var param = {'ajax-metodo': 'actualizar_version_usuario', 'ajax-modo': 'P'};
							var vinculo = vinculador.get_url('nomina', '107000093', 'ajax', param);
		                        	
                        	$.ajax({
							  url: vinculo,
							  context: document.body
							}).done(function() {
							  $( this ).addClass( 'done' );
							});
							//TODO: porque no anda en la primer llamada!!!???f
							$.ajax({
							  url: vinculo,
							  context: document.body
							}).done(function() {
							  $( this ).addClass( 'done' );
							});
							
                        }
                    });
                })*/
			</script>
		";

		$link = toba::vinculador()->get_url(null, 2);
		
		$resize_full='resize-icon-full.png';
		$resize_small='resize-icon-small.png';
		
		//$menu = toba::menu();


		$version = "1.0";//toba::proyecto()->get_version();
		$version_vista = "1.0";
		$class_version = ($version_vista < $version) ? 'active' : '';
		echo "<table class='enc-estado' border=0>
			<tr class='enc-estado-tit'>
				<td rowspan=2 class='enc-estado-logo'><a href='$link' title='Ir al inicio'>".toba_recurso::imagen_proyecto('logo.png', true)."</a></td>
				
				<td rowspan=2 class='info_version'><a class='$class_version' id='info_versiones' href='#'  title='Cambios por versi&oacute;n' >Versi&oacute;n $version</a></td>
                
				
				<td rowspan=2 class='enc-estado-version'>$dependencia
				<br>
				$secretaria</td>
				<td class='enc-estado-fecha'>Fecha</td>
				<td class='enc-estado-hora'>Hora</td>
				
				<td rowspan=2 class='zoom-fuente'>
					<a onclick='ampliar_fuente();'title='Ampliar fuente' href='#'>
					<img class='ayuda' onmouseout='if (typeof window.tipclick != 'undefined' && window.tipclick !== null) return window.tipclick.hide();' onmouseover='if (typeof window.tipclick != 'undefined' && window.tipclick !== null)
					return window.tipclick.show('Ampliar fuente',this,event, 1000);' src=".toba_recurso::imagen_proyecto($resize_full)."?av=6030 alt=''></a>
					<a onclick='reducir_fuente();'title='Reducir fuente' href='#'>
					<img class='ayuda' onmouseout='if (typeof window.tipclick != 'undefined' && window.tipclick !== null) return window.tipclick.hide();' onmouseover='if (typeof window.tipclick != 'undefined' && window.tipclick !== null)
					return window.tipclick.show('Reducir fuente',this,event, 1000);' src=".toba_recurso::imagen_proyecto($resize_small)."?av=6030' alt=''></a>
				</td>
				
				
				<td class='enc-estado-usu'>Usuario</td>
			</tr>
			
			
		
			<tr class='enc-estado-datos'>
				<td style='text-align:center;'>".date('d/m/Y')."</td>
				<script>initializeDate()</script>
				<td><form name='clock_form'><input type='text' name='time' readonly class='enc-estado-form'></form></td>
				<script>initializeClock()</script>
				<td class='enc-estado-usu'>".toba::usuario()->get_nombre()."</td>
			</tr>
			

			
		</table>

		";

		$filas = "";
		
		self::tabla_versiones();

		echo "<a style='display:none;' id='hidden_link_version' href='#popup_nueva_version' class='fancybox_version'>nueva_version</a>";
		echo "<div style='display:none;' class='popup_version' id='popup_nueva_version'><p><b>El sistema ha sido actualizado</b></p> Por favor consulte las novedades de la versi&oacute;n desde el &iacute;cono <i>cambios por versi&oacute;n</i> ".toba_recurso::imagen_proyecto('info_on.png', true)." que se encuentra en la secci&oacute;n superior izquierda del sistema. 
		</div>";
		
	}

	protected function estilos_css()
	{
		//<link rel=\"stylesheet\" href=\"css/listmenu_horizontal.css\" type=\"text/css\" />
		echo "
		<style type='text/css'>
			#overlay, #capa_espera {
				background-image:url(". toba_recurso::imagen_toba('nucleo/overlay.gif'). ");     			
			}
			.barra-superior {
				background: url(". toba_recurso::imagen_skin('barra-sup.gif') .") repeat-x top;
			}
		</style>			
		";
	}
	
	function pie()
	{
		parent::pie();
		dao_consultas::generar_pie_pagina();

	}
	function cabecera_html()
	{
		parent::cabecera_html();
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
	
	
	function tabla_versiones(){
	    $version = toba::proyecto()->get_version();
        $url = toba::vinculador()->get_url(null, 107000093,array());

	    
	    $filas = "";
        $i=0;
        if($tickets){
		    foreach( $tickets as $ticket){

		    	$milestone = $ticket['milestone'];
		    	$nro= $ticket['ticket'];
		    	$cambio = utf8_decode($ticket['cambio']);

		       	$i += 1;
		       	$clase_fila = ($i %  2  ==  0) ? 'impar' : 'par';
		       	$filas .= "    
		               <tr class='ei-cuadro-celda-$clase_fila'>
	                       <td>$milestone</td>
	                       <td>$nro</td>
	                       <td>$cambio</td>
	                   </tr>";
		    }
		}else{
			$filas .= "    
		               <tr class='ei-cuadro-celda'>
	                       <td colspan=3>En este momento no se puede acceder a los cambios por versi&oacute;n. Intente nuevamente m&aacute;s tarde.</td>
	                   </tr>";
		}
	    
	    echo "<div id='tabla_versiones' class='tabla_popup'>
            <h3>Cambios en la versi&oacute;n $version</h3>
	         <table id='tabla'>
	           <thead>
	               <tr>
    	               <th>Versi&oacute;n</th>
    	               <th>Ticket</th>
    	               <th>Detalle</th>
	               </tr>
	           </thead>
	           <tbody>
                    $filas
                   <tr>
                       <td colspan=3><a href='$url'>Ver todos los cambios</a></td>
                   </tr>
               </tbody>
	         </table>
	       </div>
	       
	    ";
       
	}
}

?>
