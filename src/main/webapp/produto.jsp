<%-- 
    Document   : produto
    Created on : 17/10/2020, 13:36:07
    Author     : Nailson Nascimento <nailsonbr@gmail.com>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!--include do cabeçalho-->
    <%@include file="header.jsp" %>

    <body class="container">

        <!--include do menu lateral-->
        <%@include file="menuLateral.jsp" %>

        <script lang="text/javascript">
            function mostrarModalExclusao(id, nome) {
                //console.log("produto:", id + " - " + nome);
                $("#nomeProduto").html(nome);
                $("#idProduto").val(id);
                $('#modalExclusao').modal('show');
            }
            function excluirProduto() {
                var idProduto = $("#idProduto").val();

                console.log("Deletar produto cujo id é: ", idProduto);
                $.get("DeleteProduto?id="+idProduto, function (resposta) {
                    $('#modalExclusao').modal('hide');
                    if(resposta === 'true'){
                        console.log("funcionou!");
                    }else{
                        console.log("falha!");
                    }
                    
                    window.location.reload();
                    
                });

            }



            excluirProduto
        </script>


        <div div class="col 5"  style="height: 100%">

            <h1 class="text-center m-2 mb-3">Produto</h1>

            <div class="form-grup form-inline m-2">
                <label>Buscar</label>
                <input class="form-control m-4" type="search" name="buscaProduto" placeholder="buscar Produtos...">
                <button type="submit" class="btn btn-primary">Buscar</button>
            </div>


            <form class="form" action="Produto" method="POST">


                <div class="form-row m-2">
                    <label class="col-sm-1 col-form-label">Id</label>
                    <div class="col-4">
                        <input class="form-control" type="text" name="id" placeholder="Código Produto...">
                    </div>
                    <label class="col-sm-1 col-form-label">Nome</label>
                    <div class="col-5">
                        <input class="form-control" type="text" name="nome" placeholder="Nome do Produto...">
                    </div>
                </div>

                <div class="form-row m-2">
                    <label class="col-sm-1 col-form-label">Família</label>
                    <div class="col-4">
                        <input class="form-control" type="text" name="familia" placeholder="Família do Produto...">
                    </div>
                    <label class="col-sm-1 col-form-label">Filial</label>
                    <div class="col-5">
                        <input class="form-control" type="text" name="filial" placeholder="Filial de Venda...">
                    </div>
                </div>
                <div class="form-row m-2">
                    <label class="col-sm-1 col-form-label">Preço</label>
                    <div class="col-4">
                        <input class="form-control" type="text" name="preco" placeholder="Preço de Venda R$...">
                    </div>
                    <label class="col-sm-1 col-form-label">Qtd.</label>
                    <div class="col-5">
                        <input class="form-control" type="text" name="quantidade" placeholder="Quantidade...">
                    </div>

                </div>
                <div    class="form-row m-2 mb-5">
                    <label class="col-sm-2 col-form-label">Descrição</label>
                    <div class="col-9">
                        <textarea class="form-control ml-1"  name="descricao" placeholder="Breve descrição..."></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
                <button type="reset" class="btn btn-danger">Cancelar</button>
            </form><br>

            <table class="tabletable-striped border border-dark" id='tabelaRolagem'>
                <thead>
                <th>Id</th>
                <th>Nome</th>
                <th>Família</th>
                <th>Quantidade</th>
                <th>Preço</th>
                <th>Descricao</th>
                <th>filial</th>
                <th></th>
                <th></th>
                </thead>
                <tbody>

                    <c:forEach var="produto" items="${listaProdutos}">
                        <tr>
                            <td>${produto.id_produto}</td>
                            <td>${produto.nome}</td>
                            <td>${produto.familia}</td>
                            <td>${produto.quantidade}</td>
                            <td>${produto.preco}</td>
                            <td>${produto.descricao}</td>
                            <td>${produto.filial}</td>

                            <td><a href="AtualizarProduto?id=${produto.id_produto}"><img src="img/pencil.svg"></a></td>
                            <td><img src="img/trashcan.svg" onclick="mostrarModalExclusao(${produto.id_produto}, '${produto.nome}')" class="botaoExcluir"></td>                            


                        </tr>
                    </c:forEach>
                </tbody>
            </table>



            <!-- Modal -->
            <div class="modal fade" id="modalExclusao" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Confirmar exclusão</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Confirmar exclusão do Produto: <label id="nomeProduto"></label> ?
                            <input id="idProduto" hidden="true"/>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary" onclick="excluirProduto()">Confirmar</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <!--  FIM -----  corpo que deve ser alterardo de acordo com a pagina -->
        <%@include file="rodape.jsp" %>

    </body>

</html>
