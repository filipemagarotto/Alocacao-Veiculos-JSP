<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/erp" var="linkEntradaServlet"/>
<c:set var="pessoaFisica" value="Pessoa Fisica" scope="request"/>
<c:set var="pessoaJuridica" value="Pessoa Juridica" scope="request"/>
<c:set var="tipoPessoa" value="${usuario.tipoUsuario}" scope="request"/>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    
    <link rel="stylesheet" type="text/css" href="img/fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style-profile.css" media="screen" />
    <title>Home Page</title>
</head>
<body>
    
    <header>  <!-- ------ CABEÃ‡ALHO ------ -->
        <div class="navbar container-header">
            <a class="navbar-brand text-light" href="erp?acao=Home">INTERCAR</a>
            <form class="form-inline">
                <a href="../anuncie" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="../minhasReservas" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
                <a href="../profile" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-user"></i>&nbsp;${usuarioLogado.nomeCompleto}</a>
                <a href="erp?acao=Logout" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-right-from-bracket"></i>&nbsp;Sair</a>
            </form>
        </div>
    </header>
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                	<img class="rounded-circle mt-5" width="150px" 
               		src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
               		<span class="font-weight-bold">${usuarioLogado.nomeCompleto}</span>
               		<span class="text-black-50">${usuarioLogado.email}</span>
               		<span></span>
            	</div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5" id="leitura">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">${usuarioLogado.tipoUsuario}</h4>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-12">
                            <label class="labels">Nome completo</label><br>
                            <div style="border-bottom: 1px solid rgb(221, 221, 221);">
                                ${usuarioLogado.nomeCompleto}
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12">
                            <label class="labels">Número para contato</label>
                            <div style="border-bottom: 1px solid rgb(221, 221, 221);">
                                ${usuarioLogado.telefone}
                            </div>
                        </div>
                        <c:if test="${usuarioLogado.isPessoaFisica == true}">
							<div class="col-md-12"><label class="labels">CPF</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            ${usuarioLogado.cpf}
                        	</div></div>
						</c:if>
						
						<c:if test="${usuarioLogado.isPessoaFisica == false}">
							<div class="col-md-12"><label class="labels">CNPJ</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
	                            ${usuarioLogado.cnpj}
	                        </div></div>
						</c:if>
                        
                        <div class="col-md-12"><label class="labels">Email</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            ${usuarioLogado.email}
                        </div></div>
                        
                        <c:if test="${usuarioLogado.isPessoaFisica == true}">
                        <div class="col-md-12"><label class="labels">CEP</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            ${usuarioLogado.cep}
                        </div></div>
                        <div class="col-md-12"><label class="labels">Data Nascimento</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            <fmt:formatDate value="${usuarioLogado.dataNascimento}" pattern="dd/MM/yyyy"/>
                        </div></div>
                        <div class="col-md-12"><label class="labels">Logradouro</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            ${usuarioLogado.endereco}
                        </div></div>
                        <div class="col-md-12"><label class="labels">Complemento</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            ${usuarioLogado.complemento}
                        </div></div>
                        </c:if>
                    </div>
                    <c:if test="${usuarioLogado.isPessoaFisica == true}">
                    <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Estado</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            ${usuarioLogado.uf}
                        </div></div>
                        <div class="col-md-6"><label class="labels">Cidade</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            ${usuarioLogado.cidade}
                        </div></div>
                    </div>
                    </c:if>
                    <c:if test="${not empty success}">
						<div class="alert alert-success" role="alert">
						 	${success}
						</div>
					</c:if>
                    <div class="row mt-3 d-flex justify-content-center">
                        <div class="col-md-3"><div class="mt-5 text-center"><button class="btn btn-primary profile-button" id="button-edit" type="button" onclick="edit();"><i class="fa-solid fa-pen-to-square">&nbsp;&nbsp;</i>Editar</button></div></div>
                    </div>
                </div>

                <div class="p-3 py-5" id="editar" style="display: none;">
                	<form action="${linkEntradaServlet }" method="post">
	                    <div class="d-flex justify-content-between align-items-center mb-3">
	                        <h4 class="text-right">${usuarioLogado.tipoUsuario}</h4>
	                    </div>
	                    <div class="row mt-2">
	                        <div class="col-md-12">
	                            <label class="labels">Nome completo</label><br>
	                            <input type="text" class="form-control" placeholder="Filipe Magarotto" name="nomeCompleto" value="${usuarioLogado.nomeCompleto}">
	                        </div>
	                    </div>
	                    <div class="row mt-3">
	                        <div class="col-md-12">
	                            <label class="labels">Número para contato</label>
	                            <input type="text" class="form-control" placeholder="(11) 99917-6700" name="telefone" value="${usuarioLogado.telefone}">
	                        </div>
	                        <c:if test="${usuarioLogado.isPessoaFisica == true}">
	                        	<div class="col-md-12"><label class="labels">CPF</label>
	                        	<input type="text" class="form-control" placeholder="123.456.789-10" name="cpf" value="${usuarioLogado.cpf}"></div>
	                        </c:if>
	                        <c:if test="${usuarioLogado.isPessoaFisica == false}">
	                        	<div class="col-md-12"><label class="labels">CNPJ</label>
	                        	<input type="text" class="form-control" placeholder="26029225000164" name="cnpj" value="${usuarioLogado.cnpj}"></div>
	                        	
	                        	<div class="col-md-12"><label class="labels">Senha</label>
		                        <input type="password" class="form-control" placeholder="*********" value="${usuarioLogado.senha}"  name="senha" ></div>
		                        
		                        <div class="col-md-12"><label class="labels">Email</label>
		                        <input type="text" class="form-control" placeholder="filpemagarotto1213@gmail.com" name="email" value="${usuarioLogado.email}"></div>	                        
	                        </c:if>
	                        
	                        <c:if test="${usuarioLogado.isPessoaFisica == true}">
		                        <div class="col-md-12"><label class="labels">Email</label>
		                        <input type="text" class="form-control" placeholder="filpemagarotto1213@gmail.com" name="email" value="${usuarioLogado.email}"></div>
		                        <div class="col-md-12"><label class="labels">Senha</label>
		                        <input type="password" class="form-control" placeholder="*********" value="${usuarioLogado.senha}"  name="senha" ></div>
		                        <div class="col-md-12"><label class="labels">CEP</label>
		                        <input type="text" class="form-control" placeholder="12345678" value="${usuarioLogado.cep}"  name="cep" ></div>
		                        <div class="col-md-12"><label class="labels">Data Nascimento</label>
		                        <input type="date" class="form-control" placeholder="15/10/2001"  name="dataNascimento"  value="<fmt:formatDate value="${usuarioLogado.dataNascimento}" pattern="dd/MM/yyyy"/>"></div>
		                        <div class="col-md-12"><label class="labels">Logradouro</label>
		                        <input type="text" class="form-control" placeholder="Rua 1" name="endereco" value="${usuarioLogado.endereco}"></div>
		                        <div class="col-md-12"><label class="labels">Complemento</label>
		                        <input type="text" class="form-control" placeholder="Jardim Paulista" name="complemento" value="${usuarioLogado.complemento}"></div>
	                       	</c:if>
	                    </div>
	                    <c:if test="${usuarioLogado.isPessoaFisica == true}">
		                    <div class="row mt-3">
		                        <div class="col-md-6"><label class="labels">Estado</label>
		                        <input type="text" class="form-control" placeholder="São Paulo" name="uf" value="${usuarioLogado.uf}"></div>
		                        <div class="col-md-6"><label class="labels">Cidade</label>
		                        <input type="text" class="form-control" placeholder="Jundiai" name="cidade" value="${usuarioLogado.cidade}"></div>
		                    </div>
	                    </c:if>
	                    <input type="hidden" name="acao" value="ProfileForm">
	                    <input type="hidden" name="tipoUsuario" value="${usuarioLogado.tipoUsuario}">
	                    <input type="hidden" name="id" value="${usuarioLogado.id}">
	                    <div class="row mt-3 d-flex justify-content-center">
	                        <div class="col-md-3">
	                        	<div class="mt-5 text-center">
	                        		<button 
	                        			class="btn btn-primary profile-button" 
	                        			id="button-save" 
	                        			type="submit" 
	                        			onclick="save();">
                       				<i class="fa-solid fa-floppy-disk"></i>&nbsp;&nbsp;
                       					Salvar
                       				</button>
                     			</div>
                     		</div>
	                    </div>
	                </form>
                </div>
            </div>

            <div class="col-md-4">
                <div class="p-3 py-5">
                    <div class="row mt-3">
                        <div class="col">
                            <div class="d-flex justify-content-between align-items-center experience"><span></span><span class="border px-3 p-1 add-experience profile-button"><i class="fa fa-plus"></i>&nbsp;Adicionar Veículo</span></div><br>
                        </div>

                        <div class="col">
                            <div class="d-flex justify-content-between align-items-center experience"><span></span><span class="border px-3 p-1 add-experience profile-button">&nbsp;<a href="erp?acao=MeusVeiculos">Meus veículos</a></span></div><br> 
                        </div>
                    </div>
                    
                    <!-- <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div> <br>
                    <div class="col-md-12"><label class="labels">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div> -->
                </div>
            </div>
        </div>
    </div>
    <script src="js/script-profile.js"></script>
</body>
</html>
