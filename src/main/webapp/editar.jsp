<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Agenda de contatos - Editar</title>
<link rel="icon" href="imagens/favicon.png">
<!-- Bootstrap CSS CDN -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
	<link rel="stylesheet" href="style.css">
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>
<body>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	<div class="wrapper">
    
    <!-- Sidebar -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <h3>N2</h3>
        </div>

        <ul class="list-unstyled components">
        <p>Desenvolvimento de Aplicações Web</p>
        	<li>
                <a href="index.html">Sobre</a>
            </li>
            <li class="active">
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Cadastros</a>
                <ul class="collapse list-unstyled" id="homeSubmenu">
                    <li>
                        <a href="agenda.jsp">Clientes</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#">Contato</a>
            </li>
        </ul>

    </nav>
    <!-- Page Content -->
    <div id="content">
    	<div style="padding: 2.5rem;">
			<h1>Editar contato</h1>
			<form name="frmContato" action="update">
				<table>
					<tr>
						<td><input type="text" name="idcon" id="caixa3" readonly
							value="<%out.print(request.getAttribute("idcon"));%>"></td>
					</tr>
					<tr>
						<td><input type="text" name="nome" class="Caixa1"
							value="<%out.print(request.getAttribute("nome"));%>"></td>
					</tr>
					<tr>
						<td><input type="text" name="fone" class="Caixa2"
							value="<%out.print(request.getAttribute("fone"));%>"></td>
					</tr>
					<tr>
						<td><input type="text" name="email" class="Caixa1"
							value="<%out.print(request.getAttribute("email"));%>"></td>
					</tr>
				</table>
				<input type="button" value="Salvar" class="Botao1" onclick="validar()">
			</form>
			<script src="scripts/validador.js"></script>
		</div>
	</div>
</body>
</html>