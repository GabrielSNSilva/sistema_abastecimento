<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Editar Represa</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Editar Represa</h3>
                    <!-- Formulario para alteração de pessoas -->
        			<form action="editar_represa" method="post">
            			<!-- area de campos do form -->
            			<input type="hidden" name="id" value="${ represa.id }" />
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">Id</label>
                    			<input type="text" class="form-control" name="id" id="id" required maxlength="100" placeholder="Id" value="${ represa.id }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">Nome</label>
                    			<input type="text" class="form-control" name="nome" id="nome" required maxlength="50" value="${ represa.nome }">
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">Sistema</label>
                    			<input type="text" class="form-control" name="sistema" id="sistema" required maxlength="50" value="${ represa.sistema }">
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="endereco">Volume Útil</label>
                    			<input type="number" step="0.010" class="form-control" name="volumeUtil" id="volumeUtil" required maxlength="50" value="${ represa.volumeUtil }">
                			</div>
            			</div>
            			 
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">Volume armazenado</label>
                    			<input type="text" class="form-control" name="volumeArmazenado" id="volumeArmazenado" required maxlength="100" placeholder="Id" value="${ represa.volumeArmazenado }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">Pluviometria</label>
                    			<input type="text" class="form-control" name="pluviometria" id="pluviometria" required maxlength="100" placeholder="Id" value="${ represa.pluviometria }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">volumeReservaTecnica</label>
                    			<input type="text" class="form-control" name="volumeReservaTecnica" id="volumeReservaTecnica" required maxlength="100" placeholder="Id" value="${ represa.volumeReservaTecnica }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">volumeTotal</label>
                    			<input type="text" class="form-control" name="volumeTotal" id="volumeTotal" required maxlength="100" placeholder="Id" value="${ represa.volumeTotal }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">calcIndice1</label>
                    			<input type="text" class="form-control" name="calcIndice1" id="calcIndice1" required maxlength="100" placeholder="Id" value="${ represa.calcIndice1 }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">calcIndice2</label>
                    			<input type="text" class="form-control" name="calcIndice2" id="calcIndice2" required maxlength="100" placeholder="Id" value="${ represa.calcIndice2 }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">calcIndice3</label>
                    			<input type="text" class="form-control" name="calcIndice3" id="calcIndice3" required maxlength="100" placeholder="Id" value="${ represa.calcIndice3 }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">data</label>
                    			<input type="text" class="form-control" name="data" id="data" required maxlength="100" placeholder="Id" value="${ represa.data }" disabled>
                			</div>
            			</div>
            			<hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="command" value="EditarRepresa">Salvar</button>
                                <a href="listar_represas" class="btn btn-default">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>