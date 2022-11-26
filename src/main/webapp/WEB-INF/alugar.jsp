<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    
    <link rel="stylesheet" type="text/css" href="img/fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style-alugar.css" media="screen" />
    <title>Home Page</title>
</head>
<body>
    <header>  <!-- ------ CABEÇALHO ------ -->
        <div class="navbar container-header">
            <a class="navbar-brand text-light" href="../"><img src="img/logo.png" style="margin-top: 10px;"></a>
            <form class="form-inline">
                <a href="../anuncie/index.html" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="../minhasReservas/index.html" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
                <a href="../profile/index.html" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-user"></i>&nbsp;Filipe Magarotto</a>
            </form>
        </div>
    </header>


    <div class="container-body" style="width: 50%;margin:auto;margin-top:35px;">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h4 class="text-right">Alugar veículo <i class="fa-solid fa-car-side"></i></h4>
        </div>

        <form class="border-2 formulario">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h5 class="text-right">Detalhes do veículo</h5>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    <label class="labels">Modelo do veículo</label><br>
                    <div class="lines">
                        Gol G6
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6"><label class="labels">Marca do veículo</label><div class="lines">
                    Volkswagen
                </div></div>
                <div class="col-md-6"><label class="labels">Cor do veículo</label><div class="lines">
                    Preto
                </div></div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6"><label class="labels">Ano do veículo</label><div class="lines">
                    2007
                </div></div>
                <div class="col-md-6"><label class="labels">Placa do veículo</label><div class="lines">
                    DWC8502
                </div></div>
            </div>
            <div class="row mt-3">
                <div class="col-md-12"><label class="labels">Motor</label><div class="lines">
                    68cv
                </div></div>
                <div class="col-md-12"><label class="labels">Kms rodados</label><div class="lines">
                    131.000
                </div></div>
                <div class="col-md-12"><label class="labels">Câmbio</label><div class="lines">
                    Manual
                </div></div>
                <div class="col-md-12"><label class="labels">Ar-condicionado</label><div class="lines">
                    Possui
                </div></div>
        </form>
        </div>
    
        <div class="col-md-12"><label class="labels corPadraoTxt fw-bold">Valor do aluguel /dia</label><div class="mb-4" class="lines">
            R$ 150,00
        </div></div>
        
        <div class="row mb-4">
            <div class="col">
                <div class="form-outline mb-4">
                    <label class="form-label" for="form6Example4">Data de retirada</label>
                    <input type="date" id="form6Example4" class="form-control" />
                </div>
            </div>
            <div class="col">
                <div class="form-outline mb-4">
                    <label class="form-label" for="form6Example4">Data de devolução</label>
                    <input type="date" id="form6Example4" class="form-control" />
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-center mt-5">
            <button type="submit" class="btn btn-danger btn-block mb-4 btn-cancelar">Cancelar</button>
            <button type="submit" onclick="salvarVeiculo()" class="btn btn-primary btn-block mb-4"><i class="fa-solid fa-cart-shopping"></i>&nbsp;&nbsp;</i><a href="erp?acao=Contrato">Prosseguir</a></button>
        </div>



    </div>

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
          © 2022 Copyright:
          <a class="text-white" href="http://127.0.0.1:5500/index.html">Intercar.com</a>
        </div>
    </footer>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>