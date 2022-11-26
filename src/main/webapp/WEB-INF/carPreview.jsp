<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
      <link rel="stylesheet" type="text/css" href="img/fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="img/fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style-car-preview.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/style-cars.css" media="screen" />
    <title>Home Page</title>
</head>
<body>
    <header>  <!-- ------ CABEÇALHO ------ -->
        <div class="navbar container-header">
            <a class="navbar-brand text-light" href="../"><img src="img/logo.png" style="margin-top: 10px;"></a>
            <form class="form-inline">
                <a href="#" class="btn btn-default active mr-2" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-file-contract"></i>&nbsp;Anuncie Aqui o seu Veículo</a>
                <a href="#" class="btn btn-default active mr-2" role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-car"></i>&nbsp;Minhas Reservas</a>
                <a href="#" class="btn btn-default active " role="button" aria-pressed="true" style="background-color: white;"><i class="fa-solid fa-user"></i>&nbsp;Perfil</a>
            </form>
        </div>
    </header>
	

    
        <div class="container-preview ">

            <div class="text-center">
                <div class="row">
                  <div class="col-8">
                    <div class="container my-5">
                        <div class="carousel-container position-relative row">
                          
                        <!-- Sorry! Lightbox doesn't work - yet. -->
                          
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                          <div class="carousel-inner">
                            <div class="carousel-item active" data-slide-number="0">
                              <img src="img/car4.jpg" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/Pn6iimgM-wo/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="1">
                              <img src="img/car5.jpg" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/tXqVe7oO-go/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="2">
                              <img src="img/car6.jpg" class="d-block car-format" alt="..."  data-remote="https://source.unsplash.com/qlYQb7B9vog/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="3">
                              <img src="https://source.unsplash.com/QfEfkWk1Uhk/1600x900/" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/QfEfkWk1Uhk/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="4">
                              <img src="https://source.unsplash.com/CSIcgaLiFO0/1600x900/" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/CSIcgaLiFO0/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="5">
                              <img src="https://source.unsplash.com/a_xa7RUKzdc/1600x900/" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/a_xa7RUKzdc/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="6">
                              <img src="https://source.unsplash.com/uanoYn1AmPs/1600x900/" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/uanoYn1AmPs/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="7">
                              <img src="https://source.unsplash.com/_snqARKTgoc/1600x900/" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/_snqARKTgoc/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="8">
                              <img src="https://source.unsplash.com/M9F8VR0jEPM/1600x900/" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/M9F8VR0jEPM/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                            <div class="carousel-item" data-slide-number="9">
                              <img src="https://source.unsplash.com/Q1p7bh3SHj8/1600x900/" class="d-block car-format" alt="..." data-remote="https://source.unsplash.com/Q1p7bh3SHj8/" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                            </div>
                          </div>
                        </div>
                        
                        <!-- Carousel Navigation -->
                        <div id="carousel-thumbs" class="carousel slide" data-ride="carousel">
                          <div class="carousel-inner">
                            <div class="carousel-item active">
                              <div class="row mx-0">
                                <div id="carousel-selector-0" class="thumb col-4 col-sm-2 px-1 py-2 selected" data-target="#myCarousel" data-slide-to="0">
                                  <img src="img/car4.jpg" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-1" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="1">
                                  <img src="img/car5.jpg" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-2" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="2">
                                  <img src="img/car6.jpg" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-3" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="3">
                                  <img src="https://source.unsplash.com/QfEfkWk1Uhk/600x400/" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-4" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="4">
                                  <img src="https://source.unsplash.com/CSIcgaLiFO0/600x400/" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-5" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="5">
                                  <img src="https://source.unsplash.com/a_xa7RUKzdc/600x400/" class="img-fluid" alt="...">
                                </div>
                              </div>
                            </div>
                            <div class="carousel-item">
                              <div class="row mx-0">
                                <div id="carousel-selector-6" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="6">
                                  <img src="https://source.unsplash.com/uanoYn1AmPs/600x400/" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-7" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="7">
                                  <img src="https://source.unsplash.com/_snqARKTgoc/600x400/" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-8" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="8">
                                  <img src="https://source.unsplash.com/M9F8VR0jEPM/600x400/" class="img-fluid" alt="...">
                                </div>
                                <div id="carousel-selector-9" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="9">
                                  <img src="https://source.unsplash.com/Q1p7bh3SHj8/600x400/" class="img-fluid" alt="...">
                                </div>
                                <div class="col-2 px-1 py-2"></div>
                                <div class="col-2 px-1 py-2"></div>
                              </div>
                            </div>
                          </div>
                          <a class="carousel-control-prev" href="#carousel-thumbs" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="carousel-control-next" href="#carousel-thumbs" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                        
                        </div> <!-- /row -->
                    </div> <!-- /container -->
                  </div>
                  <div class="col-4 fixed-top pos-card">
                    <div class="col-lg-4 item mt-5 mb-2">
                        <div class="card card-custom-valor d-flex">
                            <div class="p-2 valor-veiculo text-left">R$ 75,00 <span class="float-right">Dia</span></div>
                        </div>
                    </div>
                    <div class="col-lg-4 item ">
                        <div class="card card-custom bg-white border-white border-0">
                            <div class="card-custom-img" style="background-image: url(http://res.cloudinary.com/d3/image/upload/c_scale,q_auto:good,w_1110/trianglify-v1-cs85g_cc5d2i.jpg);"></div>
                            <div class="card-custom-avatar">
                              <img class="img-fluid" src="http://res.cloudinary.com/d3/image/upload/c_pad,g_center,h_200,q_auto:eco,w_200/bootstrap-logo_u3c8dx.jpg" alt="Avatar" />
                            </div>
                            <div class="card-body" >
                              <h4 class="card-title text-left">Joao Carros Zuados</h4>
                              <p class="card-text text-left font-weight-normal d-flex align-items-center">
                                <i class="fa-brands fa-whatsapp wts"></i><span class="ml-2">(11) 99917-6700</span>
                              </p>
                              <p class="card-text text-left font-weight-normal d-flex align-items-center">
                                <i class="fa-solid fa-location-dot map"></i><span class="ml-2">Rua Maria Apparecida Pinto Thiegue, 2 - Jardim Tarumã</span>
                              </p>
                              <p class="card-text text-left font-weight-normal d-flex align-items-center">
                                <i class="fa-solid fa-calendar-days calendar"></i><span class="ml-2">22/06/2022</span>
                              </p>
                            </div>
                            <div class="card-footer" style="background: inherit; border-color: inherit;">
                              <a href="#" class="btn btn-outline-primary ">Duvidas</a>
                              <a href="erp?acao=AlugarVeiculo" class=" btn btn-primary btn-duvida w-50">Alugar</a> 
                            </div>
                          </div>
                    </div>
                    
                  </div>
                  <div class="col-4">
                      
                  </div>
                  <div class="ficha-tecnica mb-5 ml-3 ">
                    <div class="card p-3">
                      <div class="card-ficha-tecnica">
                        <h5>Modelo</h5>
                        <p>Corsa</p>
                        <h5>Ano</h5>
                        <p>2005</p>
                        <h5>KMs</h5>
                        <p>150.000</p>
                        <h5>Câmbio</h5>
                        <p>Manual 5 marchas</p>
                        <h5>Marca</h5>
                        <p>Chevrolet</p>
                        <h5>Extras</h5>
                        <p>Trava eletrica</p>
                      </div>
                    </div>
                  </div>
                </div>
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
      
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      <script src="js/script-car-preview.js"></script>
</body>
</html>