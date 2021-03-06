<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!--include do cabeçalho-->
    <%@include file="header.jsp" %>

    <body class="container">

        <!--include do menu lateral-->
        <%@include file="menuLateral.jsp" %>

        <style type="text/css">
            .msg-erro{color:red;}
        </style>


        <div class="col" style="height: 100%">

            <h1 class="text-center m-2 mb-3">Cadastrar Cliente</h1>

            <div class="col-12">
                <form class="form" action="<c:url value="..//ClienteServlet"/>" method="POST" name="form_cadastroCliente" id="form_cadastroCliente" >
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Nome</label>
                            <input type="text" class="form-control" id="nome" name="nome" >
                            <span class="msg-erro msg-CampoNome"></span>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Sexo</label>
                            <input type="text" class="form-control" id="sexo" name="sexo" >
                            <span class="msg-erro msg-CampoSexo"></span>
                        </div> 
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Data De Nascimento</label>
                            <input type="date" class="form-control" id="data_nascimento" name="data_nascimento" >
                            <span class="msg-erro msg-CampoDataNascimento"></span>
                        </div>
                        <div class="form-group col-md-6">
                            <label>CPF</label>
                            <input type="text" class="form-control" id="cpf" name="cpf" >
                            <span class="msg-erro msg-CampoCpf"></span>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Rua</label>
                            <input type="text" class="form-control" id="rua" name="rua" >
                            <span class="msg-erro msg-CampoRua"></span>
                        </div>
                        <div class="form-group col-md-6">
                            <label>CEP</label>
                            <input type="text" class="form-control" id="cep" name="cep" >
                            <span class="msg-erro msg-CampoCep"></span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Numero Casa</label>
                            <input type="number" class="form-control" id="numero_casa" name="numero_casa" >
                            <span class="msg-erro msg-CampoNumeroCasa"></span>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Bairro</label>
                                <input type="text" class="form-control" id="bairro" name="bairro" >
                                <span class="msg-erro msg-CampoBairro"></span>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Email</label>
                            <input type="email" class="form-control" id="email" name="email" >
                            <span class="msg-erro msg-CampoEmail"></span>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Telefone</label>
                            <input type="text" class="form-control" id="telefone" name="telefone" >
                            <span class="msg-erro msg-CampoTelefone"></span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                    <button type="reset" class="btn btn-danger">Cancelar</button>

                </form>
                <br><br>
            </div>
        </div>


        <!--  FIM -----  corpo que deve ser alterardo de acordo com a pagina -->
        <%@include file="rodape.jsp" %>
        <script src="../js/ClienteValidacaoCadastro.js" type="text/javascript"></script>
    </body>
</html>
