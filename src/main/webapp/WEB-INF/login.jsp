<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/erp" var="linkEntradaServlet"/>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    
    <link rel="stylesheet" type="text/css" href="img/fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style-cars.css" media="screen" />
    <title>Home Page</title>
</head>
<body>
    <header>  <!-- ------ CABEÇALHO ------ -->
        <div class="navbar container-header">
            <a class="navbar-brand text-light" href="erp?acao=Home">INTERCAR</a>
            <form class="form-inline">
                <a href="../anuncie" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="../minhasReservas" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
                <a href="erp?acao=LoginForm" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-user"></i>&nbsp;Perfil</a>
            </form>
        </div>
    </header>
	
    <div class="container-body" style="width: 30%;margin:auto;margin-top:60px;">
        <!-- Pills navs -->
        <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
            <li class="nav-item" role="presentation">
            <a class="nav-link active" id="tab-login" data-mdb-toggle="pill" href="#pills-login" role="tab"
                aria-controls="pills-login" onclick="login();" aria-selected="true">Login</a>
            </li>
            <li class="nav-item" role="presentation">
            <a class="nav-link" onclick="register();" id="tab-register" data-mdb-toggle="pill" href="#pills-register" role="tab"
                aria-controls="pills-register" aria-selected="false">Register</a>
            </li>
        </ul>
        <!-- Pills navs -->
        
        <!-- Pills content --> 
        <c:if test="${not empty error}">
			<div class="alert alert-danger" role="alert">
			 	${error}
			</div>
		</c:if>
		<c:if test="${not empty success}">
			<div class="alert alert-success" role="alert">
			 	${success}
			</div>
		</c:if>
        <div class="tab-content">
            <div class="tab-pane show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
                <form action="${linkEntradaServlet }" method="post">
                    <!-- Email input -->
                    <div class="form-outline mb-4">
                    <input type="email" id="loginName" name="emailLogin" class="form-control" />
                    <label class="form-label"for="loginName">Email</label>
                    </div>
            
                    <!-- Password input -->
                    <div class="form-outline mb-4">
                    <input type="password" id="loginPassword" name="senhaLogin" class="form-control" />
                    <label class="form-label" for="loginPassword">Password</label>
                    </div>
            
                    <!-- 2 column grid layout -->
                    <div class="row mb-4">
                    <div class="col-md-6 d-flex justify-content-center">
                        <!-- Checkbox -->
                        <div class="form-check mb-3 mb-md-0">
                        <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
                        <label class="form-check-label" for="loginCheck"> Lembrar-me </label>
                        </div>
                    </div>
            
                    <div class="col-md-6 d-flex justify-content-center">
                        <!-- Simple link -->
                        <a href="#!">Esqueci minha senha</a>
                    </div>
                    </div>
            
                    <!-- Submit button -->
                    <!-- Submit button -->
                 	<input type="hidden" name="acao" value="Login">
                    <div class="form-check d-flex justify-content-center mb-4">
                        <button type="submit" class="btn btn-primary btn-block mb-4">Entrar</button>
                    </div>
        
                </form>
            </div>
            <div class="tab-pane" id="pills-register" role="tabpanel" aria-labelledby="tab-register">

                <div class="form-check d-flex justify-content-center mb-4">
                    <input class="input1" checked type="radio" name=tipo_pessoa id="tipo_pessoa" value="1"
                        onchange="formPessoaFisica();"> &nbsp;  Pessoa Física  &nbsp; &nbsp; &nbsp; 
                    <input class="" type="radio" name="tipo_pessoa" id="tipo_pessoa" value="2"
                        onchange="formPessoaJuridica();"> &nbsp;  Pessoa Jurídica<br>
                </div>

                <div class="tab-pane show active" id="pills-login-fisica" role="tabpanel" aria-labelledby="tab-fisica">
					<form action="${linkEntradaServlet }" method="post">
	                     <div class="row mb-4">
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label" for="form6Example1">Nome completo</label>
	                                 <input type="text" id="form6Example1" name="pFisicaNomeCompleto" required="required" class="form-control" />
	                             </div>
	                         </div>
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label"for="form6Example2">CPF</label>
	                                 <input type="text" id="form6Example2" name="pFisicaCpf" required="required" class="form-control" />
	                             </div>
	                         </div>
	                     </div>
	
	                     <div class="row mb-4">
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label"for="form6Example1">Email</label>
	                                 <input type="text" id="form6Example1" name="pFisicaEmail" required="required" class="form-control" />
	                             </div>
	                         </div>
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label"for="form6Example2">Password</label>
	                                 <input type="password" id="form6Example2" name="pFisicaSenha" required="required" class="form-control" />
	                             </div>
	                         </div>
	                     </div>
	
						<!-- CNH input -->
	                     <div class="form-outline mb-4">
	                         <label class="form-label" for="registerCnh">CNH</label>
	                         <input type="text" id="registerCnh" name="pFisicaCnh" required="required" class="form-control" />   
	                     </div>
	
	                     <!-- Username input -->
	                     <div class="form-outline mb-4">
	                         <label class="form-label" for="registerUsername">Data de nascimento</label>
	                         <input type="date" id="registerUsername" name="pFisicaDataNascimento" required="required" class="form-control" />   
	                     </div>
	
	                     <!-- Email input -->
	                     <div class="form-outline mb-4">
	                         <label class="form-label" for="registerCEP">CEP</label>
	                         <input type="text" id="registerCEP" name="pFisicaCEP" required="required" class="form-control" />
	                     </div>
	
	                     <div class="row mb-4">
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label" for="form6Example1">UF</label>
	                                 <input type="text" id="form6Example1" name="pFisicaUF" required="required" class="form-control" />     
	                             </div>
	                         </div>
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label" for="form6Example2">Complemento</label>
	                                 <input type="text" id="form6Example2" name="pFisicaComplemento" required="required" class="form-control" />             
	                             </div>
	                         </div>
	                     </div>
	
	                     <div class="row mb-4">
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label" for="form6Example1">Bairro</label>   
	                                 <input type="text" id="form6Example1" name="pFisicaBairro" required="required" class="form-control" />
	                             </div>
	                         </div>
	                         <div class="col">
	                             <div class="form-outline">
	                                 <label class="form-label" for="form6Example2">Localidade</label>
	                                 <input type="text" id="form6Example2" name="pFisicaLocalidade" required="required" class="form-control" />
	                             </div>
	                         </div>
	                     </div>
	
	                      <!-- Repeat Password input -->
	                      <div class="form-outline mb-4">
	                         <label class="form-label" for="registerRepeatPassword">Logradouro</label>
	                         <input type="text" id="registerRepeatPassword" name="pFisicaLogradouro" required="required" class="form-control" />     
	                     </div>
	
	                     <!-- Checkbox -->
	                     <div class="form-check d-flex justify-content-center mb-4">
	                         <input class="form-check-input me-2" type="checkbox" value="" id="registerCheck" checked
	                             aria-describedby="registerCheckHelpText" />
	                         <label class="form-check-label" for="registerCheck">
	                             
								Eu li e concordo com os termos
	                         </label>
	                     </div>
	                     <!-- Submit button -->
	                     <div class="form-check d-flex justify-content-center mb-4">
	                         <button type="submit" class="btn btn-primary btn-block mb-4">Registrar</button>
	                     </div>
	                 	<input type="hidden" name="tipoRegistro" value="pFisica">
	                 	<input type="hidden" name="acao" value="RegisterUser">
                	</form>
                </div>
                <div class="tab-pane" style="display: none;" id="pills-login-juridica" role="tabpanel" aria-labelledby="tab-juridica">
      				<form action="${linkEntradaServlet }" method="post">
                    	<!-- Name input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="registerName">Nome Completo</label>
                            <input type="text" id="registerName" required="required"  name="pJuridicaNomeCompleto" class="form-control" />
                        </div>
                
                        <!-- Username input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="registerUsername">CNPJ</label>
                            <input type="text" id="registerUsername" required="required"  name="pJuridicaCnpj" class="form-control" />
                        </div>
                
                        <div class="form-outline mb-4">
                            <label class="form-label" for="registerPassword" >Email</label>
                            <input type="text" id="registerPassword" required="required"  name="pJuridicaEmail" class="form-control" />
                        </div>
    
                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="registerPassword">Password</label>
                            <input type="password" id="registerPassword" required="required" name="pJuridicaSenha" class="form-control" />  
                        </div>
                
                        <!-- Checkbox -->
                        <div class="form-check d-flex justify-content-center mb-4">
                            <input class="form-check-input me-2" type="checkbox" value="" id="registerCheck" checked
                                aria-describedby="registerCheckHelpText" />
                            <label class="form-check-label" for="registerCheck">
                                Eu li e concordo com os termos
                            </label>
                        </div>
                        <!-- Submit button -->
                        <input type="hidden" name="tipoRegistro" value="pJuridica">
	                 	<input type="hidden" name="acao" value="RegisterUser">
                        <div class="form-check d-flex justify-content-center mb-4">
                            <button type="submit" class="btn btn-primary btn-block mb-4">Registrar</button>
                        </div>
                   	</form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <script src="js/script-home.js"></script>
</body>
</html>