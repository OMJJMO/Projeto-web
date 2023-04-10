<%-- 
    Document   : deletarProduto
    Created on : 06/12/2022, 10:12:24
    Author     : programador
--%>


<%@page import="br.com.Model.Produto"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProdutoExcluido</title>
        <link rel="stylesheet" type="text/css" href="css_tabela.css">
        <style type="text/css">
        *{
	margin: 0;
	border: 0;
	padding: 0;
	font-family: 'Kanit', sans-serif;
	color: white;
}

body{
	background: linear-gradient(300deg, #191970	,#2f4f4f);
	background-repeat: no-repeat;
	min-height: 969px;
	min-width: auto;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

main.container{
	background: linear-gradient(600deg,#1C1C1C, #1C1C1C);
	background-repeat: no-repeat;
	min-width: 200px;
	min-height: 250px;
	padding: 45px;
	box-shadow: 10px 10px 15px rgba(0,0,0, 1.0);
	border-radius: 8px;
}
    </style>
    </head>
    <body>
        <main class="container">
            <br><br><br><br><br>
            <h1>Produto <%=request.getParameter("nome")%> excluído do banco de Dados com sucesso!</h1>
        </main>
        
        <%
        Produto produto = new Produto();
        produto.setId_produto(Integer.parseInt(request.getParameter("id")));
        ProdutoDAO produtodao = new ProdutoDAO();
        produtodao.excluirProduto(produto);
        
        %>
    </body>
    </body>
</html>
