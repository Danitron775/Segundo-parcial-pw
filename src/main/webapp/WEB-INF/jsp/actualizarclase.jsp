<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!DOCTYPE html>
    <html>

    <head>
        <title>Actualizar Clase</title>
    </head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <body>
        <%@ include file="common/navbar.jsp" %>
            <h1>Actualizar Clase</h1>
            <form:form method="post" modelAttribute="clase">
                <form:hidden path="id" />
                <table>
                    <tr>
                        <td>
                            <form:label path="nombre">Nombre</form:label>
                        </td>
                        <td>
                            <form:input path="nombre" type="text" class="form-control" required="required" />
                        </td>
                        <td>
                            <form:errors path="nombre" cssClass="text-warning" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="horario">Horario</form:label>
                        </td>
                        <td>
                            <form:input path="horario" type="text" class="form-control" required="required" />
                        </td>
                        <td>
                            <form:errors path="horario" cssClass="text-warning" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="docente.usuid">Docente</form:label>
                        </td>
                        <td>
                            <form:select path="docente.usuid" class="form-control">
                                <form:options items="${users}" itemValue="usuid" itemLabel="username" />
                            </form:select>
                        </td>
                        <td>
                            <form:errors path="docente.usuid" cssClass="text-warning" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="salon">Salon</form:label>
                        </td>
                        <td>
                            <form:input path="salon" type="text" class="form-control" required="required" />
                        </td>
                        <td>
                            <form:errors path="salon" cssClass="text-warning" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="estado.id">Estado</form:label>
                        </td>
                        <td>
                            <form:select path="estado.id" class="form-control">
                                <form:options items="${estadoClases}" itemValue="id" itemLabel="estado" />
                            </form:select>
                        </td>
                        <td>
                            <form:errors path="estado.id" cssClass="text-warning" />
                        </td>
                    </tr>
                </table>
                <button type="submit">Guardar</button>
            </form:form>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>