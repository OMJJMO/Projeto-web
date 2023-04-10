<%-- 
    Document   : listarProduto
    Created on : 06/12/2022, 10:12:47
    Author     : programador
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="br.com.Model.Produto"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Produtos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css_tabela.css">
        <style>
            body{
               background: black;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
      <a class="navbar-brand" href="#" style="color:white">Auto-Peças Miramar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="frmProduto.html" style="color:white">Inserir</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="listarProduto.jsp" style="color:white">ListatProdutos</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
        <main>
            <center><h1 style="color:white">Produtos Cadastrados</h1></center>
             <%
            ProdutoDAO produtodao = new ProdutoDAO();
            ArrayList<Produto> lista = produtodao.listarProduto();
            request.setAttribute("list", lista);
            %>
            <table class="table">
        <tr>
            <th scope="col" style="color:white">idProduto</th>
            <th scope="col" style="color:white">DataFabri</th>
            <th scope="col" style="color:white">Descrição</th>
            <th scope="col" style="color:white">DataVal</th>
            <th scope="col" style="color:white">Nome</th>
            <th scope="col" style="color:white">Valor</th>
            <th scope="col" style="color:white">idClassificação</th>
            <th scope="col" style="color:white">idEstoque</th>
            
            <th><button type="button" class="btn btn-light"><a class="link-success" href="frmProduto.html">InserirProduto</a></button></th>
        </tr>
        <c:forEach items="${list}" var="produto">
            <tr>
                <td style="color:white"><c:out value="${produto.getId_produto()}" /></td>
                <td style="color:white"><c:out value="${produto.getDataFab()}" /></td>
                <td style="color:white"><c:out value="${produto.getDescricao()}" /></td>
                <td style="color:white"><c:out value="${produto.getDataVal()}" /></td>
                <td style="color:white"><c:out value="${produto.getNome()}" /></td>
                <td style="color:white"><c:out value="${produto.getValor()}" /></td>
                <td style="color:white"><c:out value="${produto.getId_classi()}" /></td>
                <td style="color:white"><c:out value="${produto.getId_estoque()}" /></td>
                <td style="color:white"><a href="deletarProduto.jsp?id=${produto.getId_produto()}&nome=${livro.getNome()}"  class="text-info">Excluir</a></td>
                <td style="color:white"><a href="atualizarProduto.jsp?id=${produto.getId_produto()}&dtfb=${produto.getDataFab()}&descricao=${produto.getDescricao()}&dtvl=${produto.getDataVal()}&nome=${produto.getNome()}&valor=${produto.getValor()}&idc=${produto.getId_classi()}&ide=${produto.getId_estoque()}"  class="text-info">Editar</a></td>
            </tr>
            
        </c:forEach>
        </main>
        
    </body>
</html>
