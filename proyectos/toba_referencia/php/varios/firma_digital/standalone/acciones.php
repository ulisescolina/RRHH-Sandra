<?php
require_once("toba_referencia_firmador.php");
toba::memoria()->desactivar_reciclado();

$firmador = get_firmador();

//-- DESCARGAR
if ($_GET['accion'] == 'descargar') {
	if (! isset($_GET['codigo'])) {
		header('HTTP/1.1 500 Internal Server Error');
		die("Falta indicar el codigo");
	}
	if (! $firmador->validar_sesion($_GET['codigo'])) {
		header('HTTP/1.1 500 Internal Server Error');
		die("Codigo invalido");   
	}	
	//Enviar PDF
	$firmador->enviar_headers_pdf();
	$fp = fopen(toba::proyecto()->get_path_temp()."/doc{$_GET['codigo']}_sinfirma.pdf", "r");
	fpassthru($fp);
	die;
}

//-- SUBIR
if ($_GET['accion'] == 'subir') {
	if (! isset($_POST['codigo'])) {
		header('HTTP/1.1 500 Internal Server Error');
		die("Falta indicar el codigo");
	}
	if ( ! $firmador->validar_sesion($_POST['codigo'])) {
		header('HTTP/1.1 500 Internal Server Error');
		die("Codigo invalido");   
	}
	if ($_FILES["md5_fileSigned"]["error"] != UPLOAD_ERR_OK) {
		error_log("Error uploading file");
		header('HTTP/1.1 500 Internal Server Error');
		die;
	}	
	$destino = toba::proyecto()->get_path_temp()."/doc{$_POST['codigo']}_firmado.pdf";
	$path = $_FILES['md5_fileSigned']['tmp_name'];
	if (! move_uploaded_file($path, $destino)) {
		error_log("Error uploading file");
		header('HTTP/1.1 500 Internal Server Error');
		die;
	}
	die;
}

//if ($_GET['accion'] == 'jar') {
//	$fp = fopen(dirname(__FILE__).'/firmador.jar', "r");
//	header("Pragma: public"); // required 
//	header("Expires: 0"); 
//	header("Cache-Control: must-revalidate, post-check=0, pre-check=0"); 
//	header("Cache-Control: private",false); // required for certain browsers 
//	header("Content-Type: application/java-archive"); 
//	header("Content-Disposition: attachment; filename=\"firmador.jar\"" ); 
//	header("Content-Transfer-Encoding: binary"); 
//	header("Content-Length: ".filesize(dirname(__FILE__).'/firmador.jar'));	
//	fpassthru($fp);
//	fclose($fp);
//	die;
//}
