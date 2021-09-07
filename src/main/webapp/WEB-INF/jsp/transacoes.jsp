<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Lista de Transações</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div>
				<h1 class="text-center">Lista de Transações</h1>
			</div>
			<div>
				<table class="table">
					<thead class="bg-secundary">
						<tr>
							<th>TICKER</th>
							<th>DATA</th>
							<th>PREÇO</th>
							<th>QUANTIDADE</th>
							<th>TIPO</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${transacoes}" var="t">
							<tr>
								<td>${t.ticker}</td>
								<td>${t.data}</td>
								<td>${t.preco}</td>
								<td>${t.quantidade}</td>
								<td>${t.tipo}</td>
							</tr>
						</c:forEach>
					</tbody>
			</table>
			</div>
			
		</div>
	</div>
	<script src="js/bootstrap.js"></script>
</body>
</html>