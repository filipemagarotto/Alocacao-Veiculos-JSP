<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    
    <link rel="stylesheet" type="text/css" href="img/fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style-meusVeiculos.css" media="screen" />
    <title>Home Page</title>
</head>
<body>
    
    <header>  <!-- ------ CABEÇALHO ------ -->
        <div class="navbar container-header">
            <a class="navbar-brand text-light" href="../"><img src="img/logo.png" style="margin-top: 10px;"></a>
            <form class="form-inline">
                <a href="../anuncie/index.html" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="../minhasReservas/index.html" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
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
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right centralizar">
                <div class="d-flex flex-column align-items-center text-center ">
                    <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                    <span class="font-weight-bold">Bryan Lima</span>
                    <span class="text-black-50">bryanlima@gmail.com</span>
                </div>
            </div>


            <div class="carrosDestaques"> <!-- ------ CARROS EM DESTAQUE ------ -->
                <div class="container-carrosDestaques">
                    <h2>Meus Veículos</h2><br>
                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        <div class="col">
                            <div class="card" style="height: 175px;">
                                <div class="row g-0">
                                    <div class="col-md-8"><div class="card-body">
                                        <h4>Gol G6</h4>
                                        <span>Volkswagen</span><br>
                                        <span>2006</span><br><br>
                                        <button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;"><a href="erp?acao=EditarVeiculo"> Editar </a></button>
                                    </div>
                                        
                                    </div>
                                    <div class="col-md-4" style="line-height: 150px;">
                                        <img src="img/car1.png" class="img-fluid rounded-start" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="height: 175px;">
                                <div class="row g-0">
                                    <div class="col-md-8"><div class="card-body">
                                        <h4>Gol G6</h4>
                                        <span>Volkswagen</span><br>
                                        <span>2006</span><br><br>
                                        <button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Editar </button>
                                    </div>
                                        
                                    </div>
                                    <div class="col-md-4" style="line-height: 150px;">
                                        <img src="img/car2.png" class="img-fluid rounded-start" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="height: 175px;">
                                <div class="row g-0">
                                    <div class="col-md-8"><div class="card-body">
                                        <h4>Gol G6</h4>
                                        <span>Volkswagen</span><br>
                                        <span>2006</span><br><br>
                                        <button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Editar </button>
                                    </div>
                                        
                                    </div>
                                    <div class="col-md-4" style="line-height: 150px;">
                                        <img src="img/car3.png" class="img-fluid rounded-start" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="height: 175px;">
                                <div class="row g-0">
                                    <div class="col-md-8"><div class="card-body">
                                        <h4>Gol G6</h4>
                                        <span>Volkswagen</span><br>
                                        <span>2006</span><br><br>
                                        <button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Editar </button>
                                    </div>
                                        
                                    </div>
                                    <div class="col-md-4" style="line-height: 150px;">
                                        <img src="img/car1.png" class="img-fluid rounded-start" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="height: 175px;">
                                <div class="row g-0">
                                    <div class="col-md-8"><div class="card-body">
                                        <h4>Gol G6</h4>
                                        <span>Volkswagen</span><br>
                                        <span>2006</span><br><br>
                                        <button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Editar </button>
                                    </div>
                                        
                                    </div>
                                    <div class="col-md-4" style="line-height: 150px;">
                                        <img src="img/car2.png" class="img-fluid rounded-start" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="height: 175px;">
                                <div class="row g-0">
                                    <div class="col-md-8"><div class="card-body">
                                        <h4>Gol G6</h4>
                                        <span>Volkswagen</span><br>
                                        <span>2006</span><br><br>
                                        <button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Editar </button>
                                    </div>
                                        
                                    </div>
                                    <div class="col-md-4" style="line-height: 150px;">
                                        <img src="img/car3.png" class="img-fluid rounded-start" >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>
    <script src="js/script-profile.js"></script>
</body>
</html>tml>