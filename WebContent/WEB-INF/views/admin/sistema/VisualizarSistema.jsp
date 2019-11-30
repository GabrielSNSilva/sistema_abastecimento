	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Visualizar Sistema de Abastecimento</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>
                <!-- Modal -->
                <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="modalLabel">Excluir Sistema de Abastecimento</h4>
                            </div>
                            <div class="modal-body">
                                Deseja realmente excluir este Sistema Abastecimento?
                            </div>
                            <div class="modal-footer">
                                <form action="excluir_sistema" method="post">
                                    <input type="hidden" name="id" value="${ sistema.id }" />
                                    <button type="submit" class="btn btn-primary" name="command" value="ExcluirSistema">Sim</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="container">
            		<h3 class="page-header">Visualizar Sistema de Abastecimento</h3>
            		<div class="row">
                		<div class="col-md-6">
                    		<p><strong>ID</strong>
                    		</p>
                    		<p>
                        		${ sistema.id }
                    		</p>
                		</div>
            		</div>
            		<div class="row">
                		<div class="col-md-6">
                    		<p><strong>Nome</strong>
                    		</p>
                    		<p>
                        		${ sistema.nome }
                    		</p>
                		</div>
            		</div>
            		<div class="row">
                		<div class="col-md-6">
                    		<p><strong>Localidade</strong>
                    		</p>
                    		<p>
                        		${ sistema.localidade }
                    		</p>
                		</div>
            		</div>
            		<!-- 
            		<div class="row">
                		<div class="col-md-6">
                    		<p><strong>Preço</strong>
                    		</p>
                    		<p>
                        		${ produto.preco }
                    		</p>
                		</div>
            		</div>
            		 -->			
					<hr />
            		<br>
                	<div id="actions" class="row">
                		<form method="get"> 
	                		<div class="col-md-12">
	                			<button name="id" formaction="editar_sistema_pesquisa" value="${ sistema.id }" class="btn btn-primary">Editar</button>
	                			<button name="id" formaction="excluir_sistema" value="${ sistema.id }" class="btn btn-danger">Excluir</button>
	                        	<a href="listar_sistemas" class="btn btn-default">Voltar</a>
	                    	</div>
                    	</form>
                	</div>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>