<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <link rel="stylesheet" type="text/css" href="css/style-home.css" media="screen" />
    <title>Home Page</title>
</head>
<body>
    <header>  <!-- ------ CABEÃ‡ALHO ------ -->
        <div class="navbar container-header">
            <a class="navbar-brand text-light" href="erp?acao=Home">INTERCAR</a>
            <form class="form-inline">
                <a href="erp?acao=AnuncieVeiculo" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="erp?acao=MinhasReservas" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
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
        <div class="filtroCars"> <!-- ------ FILTROS ------ -->
            <form action="${linkEntradaServlet }" method="post">
                <div class="navbar">
                    <a class="navbar-brand text-light" style="margin-top:20px;">Alugue um Carro</a>
                </div>
                <div class="navbar">
                     <div  class="col-md-4">
                         <label for="inputEmail4" class="form-label">Local de Retirada</label>
                         <i class="fa-solid fa-location-dot"></i>
                         <input type="text" class="form-control" id="inputEmail4" required="required" name="localRetirada" placeholder="Local de Retirada">
                     </div>

                     <div class="col-md-3">
                         <label for="inputEmail4" class="form-label">Data e Hora de Retirada</label>
                         <input type="date" class="form-control" id="inputEmail4" name="dataRetirada" required="required" placeholder="Data e Hora de Retirada">
                     </div>

                     <div class="col-md-3">
                         <label for="inputEmail4" class="form-label">Data e Hora de Devolução</label>
                         <input type="date" class="form-control" id="inputEmail4" name="dataDevolucao" required="required" placeholder="Data e Hora de DevoluÃ§Ã£o">
                     </div>

					 <input type="hidden" name="acao" value="ListaCarrosForm">
                     <div class="col-md-1">
                         <label for="submit14" class="form-label">&nbsp;</label>
                         <!-- <input type="submit" class="form-control" id="inputEmail4" value="Buscar"> -->
                         <a href="/listCarsByFilter"><button type="submit" class="btn btn-primary form-control" id="inputEmail4">Buscar<i class="fa-solid fa-magnifying-glass ms-2"></i>
                           </button></a>
                     </div>
                </div>
            </form>
        </div>

        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">  <!-- ------ CARROSSEL ------ -->
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/i1.jpg">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Primeiro Slide</h5>
                        <p>Texto exemplo.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/i2.jpg">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Segundo Slide</h5>
                        <p>Texto exemplo.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/i3.png">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Terceciro Slide</h5>
                        <p>Texto exemplo.</p>
                </div>
              </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
        </div>
        <br><br>

        <div class="carrosDestaques"> <!-- ------ CARROS EM DESTAQUE ------ -->
            <div class="container-carrosDestaques">
                <h2>Carros em destaque</h2><br>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <div class="card" style="height: 175px;">
                            <div class="row g-0">
                                <div class="col-md-8"><div class="card-body">
                                    <h5 class="card-title">R$ 16/dia</h5>
                                    <b>Econômico</b><br>
                                    2 Adultos, 2 Malas<br><br>
                                    <a href="erp?acao=CarPreview"><button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Ver oferta </button></a>
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
                                    <h5 class="card-title">R$ 16/dia</h5>
                                    <b>Econômico</b><br>
                                    2 Adultos, 2 Malas<br><br>
                                    <a href="/carPreview"><button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Ver oferta </button></a>
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
                                    <h5 class="card-title">R$ 16/dia</h5>
                                    <b>Econômico</b><br>
                                    2 Adultos, 2 Malas<br><br>
                                    <a href="/carPreview"><button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Ver oferta </button></a>
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
                                    <h5 class="card-title">R$ 16/dia</h5>
                                    <b>Econômico</b><br>
                                    2 Adultos, 2 Malas<br><br>
                                    <a href="/carPreview"><button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Ver oferta </button></a>
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
                                    <h5 class="card-title">R$ 16/dia</h5>
                                    <b>Econômico</b><br>
                                    2 Adultos, 2 Malas<br><br>
                                    <a href="/carPreview"><button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Ver oferta </button></a>
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
                                    <h5 class="card-title">R$ 16/dia</h5>
                                    <b>Econômico</b><br>
                                    2 Adultos, 2 Malas<br><br>
                                    <a href="/carPreview"><button type="button" class="btn btn-primary form-control d-inline-flex justify-content-center" id="inputEmail4" style="width: 120px;">Ver oferta </button></a>
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
        </div><br><br>

        <div class="container-agenciaDestaque"> <!-- ------ INFORMÃ‡ÃƒOES ÃšTEIS ------ -->
            <h2>Informações úteis</h2><br>
            <div class="row row-cols-1 row-cols-md-4 g-4">
                <div class="col">
                    <div class="card" style="width: 18rem;padding:10px;">
                        <div class="card-body">
                        <h5 class="card-title" style="color:#0b7b99;font-size:18px;">Agência mais popular</h5>
                        <h3 class="card-text">INTERCAR</h3>
                        </div>
                    </div>
                </div>

                <div class="col">

                    <div class="card" style="width: 18rem;padding:10px;">
                        <div class="card-body">
                        <h5 class="card-title" style="color:#0b7b99;font-size:18px;">Preço médio 
                            <span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="PreÃ§o mÃ©dio por dia entre todas as ofertas de aluguel de carros selecionadas por usuÃ¡rios nos resultados de busca do INTERCAR nas Ãºltimas duas semanas">
                                <i class="fa-sharp fa-solid fa-circle-info" style="cursor:pointer;"></i>
                            </span>
                        </h5>
                        <h3 class="card-text">R$ 119/dia</h3>
                        </div>
                    </div>

                </div>

                <div class="col">
                    <div class="card" style="width: 18rem;padding:10px;">
                        <div class="card-body">
                        <h5 class="card-title" style="color:#0b7b99;font-size:18px;">Boa oferta 
                            <span class="d-inline-block" tabindex="0" data-toggle="tooltip" data-bs-placement="top" title="Nas Ãºltimas 2 semanas, apenas 25% dos usuÃ¡rios do INTERCAR selecionaram uma oferta de aluguel de carro por um preÃ§o menor que este. Qualquer valor abaixo disso Ã© considerado uma boa oferta">
                                <i class="fa-sharp fa-solid fa-circle-info" style="cursor:pointer;"></i>
                            </span>
                        </h5>
                        <h3 class="card-text">R$ 101/dia</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><br><br>
    <footer class="text-center text-white">
        <div class="container p-4 pb-0">
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
          <a class="text-white" href="/home">Intercar.com</a>
        </div>
      </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>
