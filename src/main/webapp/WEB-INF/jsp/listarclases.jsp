<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

	<div>
		<%@ include file="common/navbar.jsp" %>
	</div>

	<div class="container">
		<c:if test="${usuario.roles[0].rol_nombre == 'ROLE_RECTOR'}">
			<div>
				<a type="button" class="btn btn-primary btn-md" href="/api/clases/nueva">Adicionar clase</a>
			</div>
		</c:if>
		<br>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3>Lista de clases</h3>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nombre</th>
							<th>Descripción</th>
							<th>Salón</th>
							<th>Horario</th>
							<th>Docente Encargado</th>
							<c:if test="${usuario.roles[0].rol_nombre == 'ROLE_RECTOR'}">
								<th>Acciones</th>
							</c:if>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${clases}" var="clase">
							<tr>
								<td>${clase.id}</td>
								<td>${clase.nombre}</td>
								<td>${clase.description}</td>
								<td>${clase.salon}</td>
								<td>${clase.horario}</td>
								<td>${clase.docente.docente}</td>
								<td>
									<c:if test="${usuario.roles[0].rol_nombre == 'ROLE_RECTOR'}">
										<div style="display: inline-block;">
											<a type="button" class="btn btn-success"
												href="/api/clases/actualizar?id=${clase.id}">Actualizar</a>
										</div>
										<div style="display: inline-block;">
											<form action="/api/clases/eliminar" method="post">
												<input type="hidden" name="id" value="${clase.id}" />
												<button type="submit" class="btn btn-warning">Eliminar</button>
											</form>
										</div>
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>