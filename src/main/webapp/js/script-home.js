

function register() {
    document.getElementById("pills-register").style.display = 'block';
    document.getElementById("pills-login").style.display = 'none';

    document.getElementById("tab-login").classList.remove("active");
    document.getElementById("tab-register").classList.add("active")
}

function login() {
    document.getElementById("pills-register").style.display = 'none';
    document.getElementById("pills-login").style.display = 'block';

    document.getElementById("tab-register").classList.remove("active");
    document.getElementById("tab-login").classList.add("active")
}

function formPessoaFisica() {
    document.getElementById("pills-login-fisica").style.display = 'block';
    document.getElementById("pills-login-juridica").style.display = 'none';
}

function formPessoaJuridica() {
    document.getElementById("pills-login-fisica").style.display = 'none';
    document.getElementById("pills-login-juridica").style.display = 'block';
}