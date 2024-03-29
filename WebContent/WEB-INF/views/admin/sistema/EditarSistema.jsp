<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Editar Sistema de Abastecimento</title>

            <link"WebContent/WEB-INF/views/admin/sistema/EditarSistema.jsp" href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Editar  de Abastecimento</h3>
                    <!-- Formulario para alteração de pessoas -->
        			<form action="editar_sistema" method="post">
            			<!-- area de campos do form -->
            			<input type="hidden" name="id" value="${ sistema.id }" />
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">Id</label>
                    			<input type="text" class="form-control" name="id" id="id" required maxlength="100" placeholder="Id" value="${ sistema.id }" disabled>
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="nome">Nome</label>
                    			<input type="text" class="form-control" name="nome" id="nome" required maxlength="50" value="${ sistema.nome }">
                			</div>
            			</div>
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="endereco">Localidade</label>
                    			<!-- <input type="text" class="form-control" name="localidade" id="localidade" required maxlength="50" value="${ sistema.localidade }"> -->
                    			<select class="form-control" name="localidade">
			                        <c:forEach var="municipio" items="${municipios}">
			                            <option value="${municipio.nome}">${municipio.nome}</option>
			                        </c:forEach>
			                    </select>
                			</div>
            			</div>
            			<!-- 
            			<div class="row">
                			<div class="form-group col-md-6">
                    			<label for="telefone">Preço</label>
                    			<input type="number" class="form-control" name="preco" id="preco" required maxlength="17" value="${ produto.preco }">
                			</div>
						</div>
						 -->
            			<hr />
                        <div id="actions" class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="command" value="EditarSistema">Salvar</button>
                                <a href="listar_sistemas" class="btn btn-default">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>