<%-- 
    Document   : atualizarProduto
    Created on : 06/12/2022, 10:13:10
    Author     : programador
--%>


<%@page import="br.com.Model.Produto"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>atualizarProduto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        
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
	width: 500px;
	height: 1150px;
	padding: 45px;
	box-shadow: 10px 10px 15px rgba(0,0,0, 1.0);
	border-radius: 8px;
}
label.input{
	margin-bottom: 10px;
	width: 300px;
}
    </style>
    </head>
    <body>
        <main class="container">
       <h1>Atualizar dados do Produto <%=request.getParameter("nome")%></h1>
        <br>
        <form action="atualizarProduto.jsp?id=<%=request.getParameter("id")%>" method="POST">
            <label class="form-label">Id: </label><input type="text" name="idProduto" value="<%=request.getParameter("id")%>" class="form-control" disabled><br>
        <label class="form-label">DataFab: </label><input type="text" name="dtf" value="<%=request.getParameter("dtfb")%>" required size="50" style="color:black" class="form-control"><br />
        <label class="form-label">Descrção: </label><input type="text" name="desc" value="<%=request.getParameter("descricao")%>" required size="50" style="color:black" class="form-control"><br />
        <label class="form-label">DataVal: </label><input type="text" name="dtv" value="<%=request.getParameter("dtvl")%>" required size="50" style="color:black" class="form-control"><br />
        <label class="form-label">Nome: </label><input type="text" name="nome" value="<%=request.getParameter("nome")%>" required size="50" style="color:black" class="form-control"><br />
        <label class="form-label">Valor: </label><input type="text" name="val" value="<%=request.getParameter("valor")%>" required size="50" style="color:black" class="form-control"><br /><br>
        <label class="form-label">IdClass: </label><input type="text" name="idc" value="<%=request.getParameter("idc")%>" required size="50" style="color:black" class="form-control"><br /><br>
        <label class="form-label">IdEst: </label><input type="text" name="ide" value="<%=request.getParameter("ide")%>" required size="50" style="color:black" class="form-control"><br /><br>
        <div>
        <button type="submit" class="btn btn-light" style="color:black" href:"listarProduto.jsp" >Atualizar</button>
        </div>
        </form>
        <%
            try {
        Produto produto = new Produto();
        produto.setId_produto(Integer.parseInt(request.getParameter("id")));
        produto.setDataFab(request.getParameter("dtf"));
        produto.setDescricao(request.getParameter("desc"));
        produto.setDataVal(request.getParameter("dtv"));
        produto.setNome(request.getParameter("nome"));
        produto.setValor(Double.parseDouble(request.getParameter("val")));
        produto.setId_classi(Integer.parseInt(request.getParameter("idc")));
        produto.setId_estoque(Integer.parseInt(request.getParameter("ide")));
        
        ProdutoDAO produtodao = new ProdutoDAO();
        produtodao.atualizarProduto(produto); 
        } catch (Exception e) {
            System.out.println(e);
        }
        
        %>
       
        <br>
        <a href="listarProduto.jsp" class="link-secondary fs-4 text-center">Voltar</a>
        </main>
    </body>
</html>
