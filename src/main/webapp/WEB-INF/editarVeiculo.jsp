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
    <link rel="stylesheet" type="text/css" href="css/style-editarVeiculo.css" media="screen" />
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

        <div class="box-form">
            <div class="p-3 py-5" id="leitura">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Editar informações do veículo</h4>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-12">
                            <label class="labels">Modelo do veículo</label><br>
                            <div style="border-bottom: 1px solid rgb(221, 221, 221);">
                                Gol G6
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Marca do veículo</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            Volkswagen
                        </div></div>
                        <div class="col-md-6"><label class="labels">Cor do veículo</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            Preto
                        </div></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Ano do veículo</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            2007
                        </div></div>
                        <div class="col-md-6"><label class="labels">Placa do veículo</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            DWC8502
                        </div></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Motor</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            68cv
                        </div></div>
                        <div class="col-md-12"><label class="labels">Kms rodados</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            131.000
                        </div></div>
                        <div class="col-md-12"><label class="labels">Câmbio</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            Manual
                        </div></div>
                        <div class="col-md-12"><label class="labels">Ar-condicionado</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            Possui
                        </div></div>
                        <div class="col-md-12"><label class="labels">Valor do aluguel /dia</label><div style="border-bottom: 1px solid rgb(221, 221, 221);">
                            R$ 150,00
                        </div></div>
                    <div class="row mt-3 d-flex justify-content-center">
                        <div class="col-md-3"><div class="mt-5 text-center"><button class="btn btn-primary profile-button" id="button-edit" type="button" onclick="editarVeiculo()"><i class="fa-solid fa-pen-to-square">&nbsp;&nbsp;</i>Editar</button></div></div>
                    </div>
                </div>
            </div>


            <!-- FORMULARIO EDITAVEL -->
            <!-- FORMULARIO EDITAVEL -->
            <!-- FORMULARIO EDITAVEL -->

            <div class="p-3 py-5" id="editar" style="display: none;">

                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Editar informações do veículo</h4>
                </div>
                <form>

                    <div class="form-outline mb-4">
                        <label class="form-label" for="form6Example7">Modelo do veículo</label>
                        <input class="form-control" id="form6Example7" rows="4"></input>
                    </div>
                
                    <div class="row mb-4">
                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example1">Marca do veículo</label>
                                <input type="text" id="form6Example1" class="form-control" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example2">Cor do veículo</label>
                                <input type="text" id="form6Example2" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example1">Ano do veículo</label>
                                <input type="text" id="form6Example1" class="form-control" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-outline">
                                <label class="form-label" for="form6Example2">Placa de veículo</label>
                                <input type="text" id="form6Example2" class="form-control" />
                            </div>
                        </div>
                    </div>
                
                    <div class="form-outline mb-4">
                        <label class="form-label" for="form6Example3">Motor</label>
                        <input type="text" id="form6Example3" class="form-control" /> 
                    </div>

                    

                    <div class="form-outline mb-4">
                        <label class="form-label" for="form6Example5">Km Rodado</label>
                    <input type="number" id="form6Example5" class="form-control" />
                    
                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label" for="form6Example5">Câmbio</label>
                        <select class="form-select" aria-label="Câmbio">
                            <option selected>Manual</option>
                            <option value="1">Automático</option>
                        </select>
                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label" for="form6Example5">Ar-condicionado</label>
                        <select class="form-select" aria-label="Câmbio">
                            <option selected>Não Possui</option>
                            <option >Possui</option>
                        </select>
                    </div>
                
                    <div class="form-outline mb-4">
                        <label class="form-label " for="form6Example4">Valor do Aluguel</label>
                        <input type="number" id="form6Example4" class="form-control" />
                    </div>

                    <div class="mb-3">
                        <label for="formFile" class="form-label">Fotos do seu veículo</label>
                        <input class="form-control" type="file" id="formFile">
                    </div>

                    <div class="form-check d-flex justify-content-center mt-5">
                        <button type="submit" onclick="salvarVeiculo()" class="btn btn-primary btn-block mb-4"><i class="fa-solid fa-pen-to-square">&nbsp;&nbsp;</i>Salvar Alterações</button>
                        <button type="submit" class="btn btn-danger btn-block mb-4 btn-cancelar">Cancelar</button>
                    </div>
                </form>
            </div>
        

        </div>

    </div>

    <script src="js/script-editarVeiculo.js"></script>
</body>
</html>