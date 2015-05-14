<?php

function parse_sm(&$sts){

$sm=array(
0 => 
':)',
':-)',
':(',
':-(',
':d',
':-d',
':|',
':-|',
':p',
':-p',
';)',
';-)'
 );
 
$img=array(
0 =>
'smile.gif',
'smile.gif',
'sad.gif',
'sad.gif',
'biggrin.gif',
'biggrin.gif',
'mellow.gif',
'mellow.gif',
'tongue.gif',
'tongue.gif',
'wink.gif',
'wink.gif'
);
global $td, $ip;

	foreach($sm as $i =>$val){
		$imaga = $ip.$td.'xp/smilies/'.$img[$i];
		$alter = explode('.', $img[$i]);
		$tmp = '<img src="'.$imaga.'" width="20" height="20" align="top" alt="('.$alter[0].')">';
		$sts = str_replace($sm[$i], $tmp, $sts);
		$sts = str_replace(strtoupper($sm[$i]), $tmp, $sts);
	}  

	return TRUE;
};
?>
