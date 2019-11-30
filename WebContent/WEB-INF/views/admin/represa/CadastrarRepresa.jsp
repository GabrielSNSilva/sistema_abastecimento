<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastrar Represa</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp"/>
    <!-- Container Principal -->
    <div id="main" class="container">
        <h3 class="page-header">Cadastrar Represa</h3>
        <!-- Formulario para inclusao de clientes -->
        <form action="nova_represa" method="post">
            <!-- area de campos do form -->
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="Nome">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="nome">Sistema de Abastecimento</label>
                    <!-- <input type="text" class="form-control" name="represa" id="represa" required maxlength="100" value="${ represa.nome }"> -->
                    <select class="form-control" name="sistema">
                        <c:forEach var="sistema" items="${sistemas}">
                            <option value="${sistema.nome}">${sistema.nome}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="nome">Volume Útil</label>
                    <input type="number"  step="0.010" class="form-control" name="volumeUtil" id="volumeUtil" required maxlength="100" placeholder="Volume Útil">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="nome">Volume Armazenado</label>
                    <input type="number"  step="0.010" class="form-control" name="volumeArmazenado" id="volumeArmazenado" required maxlength="100" placeholder="Volume Armazenado">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="nome">Volume de Reserva Técnica</label>
                    <input type="number"  step="0.010" class="form-control" name="volumeReservaTecnica" id="volumeReservaTecnica" required maxlength="100" placeholder="Volume de ReservaTécnica">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="nome">Pluviometria</label>
                    <input type="number"  step="0.010" class="form-control" name="pluviometria" id="pluviometria" required maxlength="100" placeholder="Pluviometria">
                </div>
            </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary" name="command" value="novaRepresa">Salvar</button>
                    <a href="listar_represas" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</body>

</html>