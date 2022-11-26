
function formPessoaFisica() {
  

    document.getElementById("titulo-pessoa-fisica").style.display = 'flex';
    document.getElementById("titulo-pessoa-juridica").style.display = 'none';

    document.getElementById("form-pessoa-fisica").style.display = 'flex';
    document.getElementById("form-pessoa-juridica").style.display = 'none';

    
    document.getElementById("form-btn-cadastrar").style.display = 'flex';
}


function formPessoaJuridica() {
   
    document.getElementById("titulo-pessoa-juridica").style.display = 'flex';
    document.getElementById("titulo-pessoa-fisica").style.display = 'none';

    document.getElementById("form-pessoa-fisica").style.display = 'none';
    document.getElementById("form-pessoa-juridica").style.display = 'flex';

    
    document.getElementById("form-btn-cadastrar").style.display = 'flex';
}