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
            <a class="navbar-brand text-light" href="../"><img src="img/logo.png" style="margin-top: 10px;"></a>
            <form class="form-inline">
                <a href="../anuncie" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="../minhasReservas" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
                <a href="../profile" class="btn btn-default active" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-user"></i>&nbsp;Filipe Magarotto</a>
            </form>
        </div>
    </header>

    
	<!-- year_car -> Ano do Carro
	rental_value -> Valor do Aluguel
	motor -> Motor
	license_plate -> Placa de Carro
	km -> Km Rodado
	id_userprovides_company -> Empresa JurÃ­dica Ofertador
	id_userprovider_client -> Pessoa FÃ­sica Ofertadora
	id_userclient -> Cliente Comprador
	gear -> AutomÃ¡tico ou Manual
	car_model -> Modelo do carro
	car_color -> Cor do carro
	car_brand -> Marca do Carro
	air_conditioning -> SIM ou NAO para ar-condicionado -->
	

    <div class="container-body" style="width: 40%;margin:auto;margin-top:35px;">
        <form>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Ano do Carro</label>
                        <input type="text" id="form6Example1" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Placa de Carro</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>
          
            <div class="form-outline mb-4">
                <label class="form-label" for="form6Example3">Motor</label>
                <input type="text" id="form6Example3" class="form-control" /> 
            </div>

            <div class="form-outline mb-4">
                <label class="form-label" for="form6Example4">Valor do Aluguel</label>
                <input type="number" id="form6Example4" class="form-control" />
            </div>

            <div class="form-outline mb-4">
                <label class="form-label" for="form6Example5">Km Rodado</label>
              <input type="number" id="form6Example5" class="form-control" />
              
            </div>

            <div class="form-outline mb-4">
                <label class="form-label" for="form6Example5">CÂmbio</label>
                <select class="form-select" aria-label="CÃ¢mbio">
                    <option selected>Manual</option>
                    <option value="1">AutomÃ¡tico</option>
                </select>
            </div>
          
            <div class="form-outline mb-4">
                <label class="form-label" for="form6Example7">Modelo do carro</label>
                <input class="form-control" id="form6Example7" rows="4"></input>
            </div>
          
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example1">Marca do Carro</label>
                        <input type="text" id="form6Example1" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label" for="form6Example2">Cor do carro</label>
                        <input type="text" id="form6Example2" class="form-control" />
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label for="formFile" class="form-label">Fotos do seu veículo</label>
                <input class="form-control" type="file" id="formFile">
            </div>

            <div class="form-check d-flex justify-content-left mb-4">
              <input class="form-check-input me-2" type="checkbox" value="" id="form6Example8" checked />
              <label class="form-check-label" for="form6Example8"> Ar-condicionado </label>
            </div>

            <div class="form-check d-flex justify-content-center mb-4">
                <button type="submit" class="btn btn-primary btn-block mb-4">Cadastrar Veículo</button>
            </div>
          </form>
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
          Â© 2022 Copyright:
          <a class="text-white" href="http://127.0.0.1:5500/index.html">Intercar.com</a>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>