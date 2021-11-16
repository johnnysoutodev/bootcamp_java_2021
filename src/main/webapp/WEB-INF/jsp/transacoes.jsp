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
			<form action="<c:url value="/transacoes"/>">
				<div class="form-group">
					<label for="ticker">Ticker</label>
					<input id="ticker" class="form-control">
				</div>
				<div class="form-group">
					<label for="data">Data</label>
					<input id="data" class="form-control">
				</div>
				<div class="form-group">
					<label for="preco">Preço</label>
					<input id="preco" class="form-control">
				</div>
				<div class="form-group">
					<label for="quantidade">Quantidade</label>
					<input id="quantidade" class="form-control">
				</div>
				<div class="form-group">
					<label for="tipo">Tipo Transação</label>
					<input id="tipo" class="form-control">
				</div>
				<div>
					<input type="submit" value="Salvar" class="mt-2 btn btn-primary">
				</div>
			</form>
		</div>
		<div class="row">
			<div>
				<h1 class="text-center">Lista de Transações</h1>
			</div>
			<div>
				<table class="table table-hover table-bordered table-striped">
					<thead class="bg-primary">
						<tr class="text-center">
							<th>TICKER</th>
							<th>DATA</th>
							<th>PREÇO</th>
							<th>QUANTIDADE</th>
							<th>TIPO TRANSAÇÃO</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${transacoes}" var="t">
							<tr class="text-center">
								<td>${t.ticker}</td>
								<td>${t.data}</td>
								<td>R$ ${t.preco}</td>
								<td>${t.quantidade}</td>
								<td>${t.tipo}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>