<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <header>  <!-- ------ CABEÃ‡ALHO ------ -->
        <div class="navbar container-header">
            <a class="navbar-brand text-light" href="erp?acao=Home">INTERCAR</a>
            <form class="form-inline">
                <a href="../anuncie" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="../minhasReservas" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
                <c:if test="${not empty usuarioLogado}">
                	<a href="erp?acao=Profile" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-user"></i>&nbsp;${usuarioLogado.nomeCompleto}</a>
                	<a href="erp?acao=Logout" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-right-from-bracket"></i>&nbsp;Sair</a>
                </c:if>
                <c:if test="${empty usuarioLogado}">
                <a href="erp?acao=LoginForm" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-user"></i>&nbsp;Perfil</a>
                </c:if>
            </form>
        </div>
    </header>
	
    <div class="container-body">
    	<form action="${linkEntradaServlet }" method="post">
	        <div class="container-filtros">
	            <div class="row" style="margin-top:15px;">
	                <div class="col-2">
	                    <div class="dropdown">
	                        <div class="card" style="width: 15rem;padding:10px;">
	                            <div class="card-body" type="button" id="buttonDiv" data-bs-toggle="dropdown" aria-expanded="false" style="padding:10px;">
	                                <select style="border:none;" id="buttonModeloCarrro" name="marcaVeiculoFilter">
		                       			<option class="dropdown-item">Selecione a marca</option>
		                       			<option class="dropdown-item">Toyota</option>
		                       			<option class="dropdown-item">Honda</option>
		                       			<option class="dropdown-item">Chevrolet</option>
		                       			<option class="dropdown-item">BMW</option>
		                       			<option class="dropdown-item">Renault</option>
		                       			<option class="dropdown-item">Nissan</option>
		                       			<option class="dropdown-item">Mercedez</option>
	                       			</select>
	                            </div>
	                        </div>      
	                    </div>
	                </div>
	                <div class="col-2">
	                    <div class="dropdown">
	                        <div class="card" style="width: 15rem;padding:10px;">
	                            <div class="card-body" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="padding:10px;">
	                                <select style="border:none;" id="buttonCambio" name="cambioVeiculoCambio">
		                       			<option class="dropdown-item">Selecione o cambio</option>
		                       			<option class="dropdown-item">Manual</option>
		                       			<option class="dropdown-item">Automático</option>
	                       			</select>
	                            </div>
	                        </div> 
	                    </div>
	                </div>
	                <div class="col-2">
	                    <div class="card" style="max-width: 15rem;padding:10px;">
	                        <div class="card-body" style="padding:10px;">        
	                            
	                            <input type="range" value="150" max='200' oninput="handleValorAluguel();" id="valorAluguel" name="valorAluguelCambio" style="width: 130px;">
	                            R$ <span id="valorAluguelField" style="position:fixed;">150</span>
	                        </div>
	                    </div>   
	                </div>
	                <div class="col-2">
	                    <div class="dropdown">
	                        <div class="card" style="width: 15rem;padding:10px;">
	                            <div class="card-body" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="padding:10px;">
	                                <select style="border:none;" id="buttonCambio" name="motorVeiculoFilter">
		                       			<option class="dropdown-item">Tipo do Motor</option>
		                       			<option class="dropdown-item">Econômico</option>
		                       			<option class="dropdown-item">Potente</option>
	                       			</select>
	                            </div>
	                        </div> 
	                    </div>
	                </div>
	                <div class="col-2">
	                    <div class="dropdown">
	                        <div class="card" style="width: 15rem;padding:10px;">
	                            <div class="card-body" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="padding:10px;">
	                                <select style="border:none;" id="arCondicionado" name="arVeiculoFilter">
		                       			<option class="dropdown-item">Ar-Condicionado</option>
		                       			<option class="dropdown-item">Possui</option>
		                       			<option class="dropdown-item">Não Possui</option>
	                       			</select>
	                            </div>
	                        </div> 
	                    </div>
	                </div>
	                <input type="hidden" name="cidade" value="${veiculos.cidadeRetirada}">
	                <input type="hidden" name="dataRetirada" value="${veiculos.dataRetirada}">
	                <input type="hidden" name="dataDevolucao" value="${veiculos.dataDevolucao}">
	                <input type="hidden" name="acao" value="ListaCarrosForm">
	                <div class="col-2">
	                    <div class="dropdown">
	                        <div style="width: 15rem;padding:10px;">
	                            <button type="submit" class="btn btn-primary form-control" id="inputEmail4" style="width: 120px;padding:10px;">Buscar</button>
	                        </div> 
	                    </div>
	                </div>
	            </div>   
	        </div><br><br>
        </form>
        <div class="list-cars">
            <div class="carrosFiltrados">
            	<c:if test="${not empty veiculos}">
            		<h2>Veículos encontrados (${fn:length(veiculos.lstVeiculos)})</h2><br>
	            	<c:forEach items="${veiculos.lstVeiculos}" var="veiculo">
		                <div class="row row-cols-1 row-cols-md-1 g-4">
		                    <div class="col">
		                        <label class="title-list-cars">${veiculo.modeloVeiculo}</label>
		                        <a href="">
		                            <div class="card carFilter" style="height: 175px; border-top-left-radius: 0;">
		                                <div class="row g-0">
		                                    <div class="col-md-4">
		                                        <div class="card-body">
		                                            <h5 class="card-title">R$ ${veiculo.valorAluguel}/dia</h5>
		                                            <label style="color:#0d6efd;">${veiculo.marcaVeiculo}</label><br>
		                                            ${veiculo.embreagemVeiculo}
		                                        </div>  
		                                    </div>
		                                    <div class="col-md-4">
		                                        <div class="card-body">
		                                            <h5 class="card-title"></h5>
		                                            <b>${veiculo.anoVeiculo}</b><br>
		                                            Ar-condicionado: ${veiculo.arCondicionado}<br>
		                                        </div>  
		                                    </div>
		                                    <div class="col-md-4" style="line-height: 150px;">
		                                        <img src="img/car1.png" class="img-fluid rounded-start" >
		                                    </div>
		                                </div>
		                            </div>
		                        </a>
		                    </div>
		                </div><br>
	               </c:forEach>
				</c:if>
				
				<c:if test="${empty veiculos}">
					Nenhum veículo foi encontrado.
				</c:if>
            </div>
        </div><br>
    </div>

    <footer class="text-center text-white">
        <div class="p-4 pb-0">
            <section class="mb-4">
                <!-- Facebook -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-facebook-f"></i
                ></a>
                <!-- Twitter -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-twitter"></i
                ></a>
                <!-- Google -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-google"></i
                ></a>
                <!-- Instagram -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-instagram"></i
                ></a>
                <!-- Linkedin -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-linkedin-in"></i
                ></a>
                <!-- Github -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-github"></i
                ></a>
            </section>
        </div>

        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
          Â© 2022 Copyright:
          <a class="text-white" href="http://127.0.0.1:5500/index.html">Intercar.com</a>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <script src="js/listaCarros.js"></script>
</body>
</html>