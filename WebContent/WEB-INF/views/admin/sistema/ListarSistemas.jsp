<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listar Sistema de Abastecimento</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Barra superior com os menus de navegação -->
    <c:import url="Menu.jsp" />
    <!-- Container Principal -->
    <div id="main" class="container">
        <h3 class="page-header">Sistema(s) de Abastecimento(s)</h3>
        <c:if test="${not empty sistemas}">
            <div class="table-responsive col-md-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Localidade</th>
                            <!-- <th>Preço</th> -->
                            <th class="actions">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="sistema" items="${ sistemas }">
                        	<form action="visualizar_sistema" method="get"> 
	                            <tr>
	                                <td>${ sistema.id }</td>
	                                <td>${ sistema.nome }</td>
	                                <td>${ sistema.localidade }</td>
	                                <!-- <td>${ produto.preco }</td> -->
	                                <td class="actions">
	                                
	                                	<button name="id" value="${ sistema.id }" class="btn btn-success btn-xs">Visualizar</button>
	                                	
	                                	<button name="id" formaction="editar_sistema_pesquisa" value="${ sistema.id }" class="btn btn-warning btn-xs">Editar</button>
	                                	
	                                	<button name="id" formaction="excluir_sistema" value="${ sistema.id }" class="btn btn-danger btn-xs">Excluir</button>
	                              
	                               	</td>
	                            </tr>
                          </form>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        <c:if test="${empty sistemas}">
            <div class="alert alert-info" role="alert">N&atilde;o h&aacute; Sistema de Abastecimento nesta lista.</div>
        </c:if>
        <a href="admin_index" class="btn btn-default">Voltar</a>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>