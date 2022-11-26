/**
 * 
 */
 
window.onload = function exampleFunction() {
	console.log('carregou');
}
 
function handleValorAluguel() {
	let valorAluguelInput = document.getElementById("valorAluguel").value;
	document.getElementById("valorAluguelField").innerHTML = valorAluguelInput;
}

 
 function buscarVeiculosByFilter() {
	
//	let modelo = document.getElementById("buttonModeloCarrro").value;
//	console.log(modelo);
//	let cambio = document.getElementById("buttonCambio").value;
//	console.log(cambio);
//	let valor = document.getElementById("buttonValor").value;
//	console.log(valor);
//	let arCondicionado = document.getElementById("arCondicionado").value;
//	console.log(arCondicionado);
//	let cidade = document.getElementById("buttonCidade").value;
//	console.log(cidade);
//	
//	let url = window.location.host;
//	let urlCustom = url+'/AlocacaoVeiculosJSP/erp?acao=ListaCarrosForm&modelo='+modelo+'&cambio='+cambio+'&valor='+valor+'&arCondicionado='+arCondicionado+'&cidade='+cidade+'&customFilter=customFilter'
//	window.open('http://'+urlCustom, '');
}