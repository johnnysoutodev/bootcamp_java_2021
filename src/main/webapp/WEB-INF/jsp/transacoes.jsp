<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Lista de Transações</title>
</head>
<body>
	<h1>Lista de Transações</h1>
	<table>
		<thead>
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

</body>
</html>