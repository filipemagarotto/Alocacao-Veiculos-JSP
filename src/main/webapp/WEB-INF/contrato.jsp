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
    <link rel="stylesheet" type="text/css" href="css/style-contrato.css" media="screen" />
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
            <h4 class="text-right">Contrato de aluguel <i class="fa-sharp fa-solid fa-file-signature"></i></h4>
        </div>

        <form class="border-2 formulario">
            <!-- DADOS DO LOCATARIO -->
            <div class="d-flex justify-content-between align-items-center mb-1 mt-3">
                <h5 class="text-right">Dados Locador </h5>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    <label class="labels">Nome completo</label><br>
                    <div style="border-bottom: 1px solid rgb(221, 221, 221);">
                        Filipe Magarotto
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-12">
                    <label class="labels">Número para contato</label>
                    <div style="border-bottom: 1px solid rgb(221, 221, 221);">
                        (11) 99917-6700
                    </div>
                </div>
                <div class="col-md-12"><label class="labels">CPF</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                    123.456.789-10
                </div></div>


                <!-- DADOS DO LOCATARIO -->
                <div class="d-flex justify-content-between align-items-center mb-1 mt-3">
                    <h5 class="text-right">Dados locatário </h5>
                </div>
                <div class="row mt-2">
                    <div class="col-md-12">
                        <label class="labels">Nome completo</label><br>
                        <div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            Bryan Lima
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12">
                        <label class="labels">Número para contato</label>
                        <div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            (11) 98988-5654
                        </div>
                    </div>
                    <div class="col-md-12"><label class="labels">CNPJ</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                        46.377.222/0001-29 
                    </div></div>


                    <!-- DADOS DO LOCATARIO -->
                    <div class="d-flex justify-content-between align-items-center mb-1 mt-3">
                        <h5 class="text-right">Dados da locação </h5>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Marca do veículo</label><div class="lines">
                            Volkswagen
                        </div></div>
                        <div class="col-md-6">
                            <label class="labels">Modelo do veículo</label><br>
                            <div class="lines">
                                Gol G6
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Placa do veículo</label><div class="lines">
                            DWC8502
                        </div>
                    </div>
                    
                    <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Data de retirada</label><div class="lines">
                            25/11/2022 - 15:00
                        </div></div>
                        <div class="col-md-6"><label class="labels">Data de devolução</label><br><div class="lines">
                            30/11/2022 - 15:00
                        </div></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6 mt-4"><label class="labels corPadraoTxt text-valor fw-bold">Valor total</label><div class="mb-4 lines">
                            R$ 150,00
                        </div></div>
                        <div class="col-md-6 mt-4"><label class="labels corPadraoTxt text-valor fw-bold">Total de dias</label><div class="mb-4 lines">
                            5
                        </div></div>
                    </div>
                </div>
            </form>
        </div>
    </div>
        
        <div class="d-flex justify-content-center mt-5">
            <button type="submit" class="btn btn-danger btn-block mb-4 btn-cancelar">Cancelar</button>
            <button type="submit" onclick="salvarVeiculo()" class=" btnPersonalizado mb-4"><i class="fa-solid fa-cart-shopping"></i>&nbsp;&nbsp;</i>ALUGAR</button>
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