function get ($id) { //Função importante para gerenciar os elementos por ID
	return document.getElementById($id); 
}

window.onload = function(){
	$tel = get('mtelefone');
	$tel.style.display="none";
}

function mostraTelefone($m){
	$tel =get('mtelefone');
	if($m){
		$tel.style.display="block"
	}else{
		$tel.style.display="none"
	}
}

window.load = function(){
mostraTelefone(false);

}




