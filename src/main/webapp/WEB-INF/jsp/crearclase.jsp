<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <!DOCTYPE html>
    <html>

    <head>
        <title>Nueva Clase</title>
    </head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <body>
        <%@ include file="common/navbar.jsp" %>
            <h1>Nueva Clase</h1>
            <c:if test="${not empty successMessage}">
                <div>
                    ${successMessage}
                </div>
            </c:if>
            <form:form action="/api/clases/guardar" method="post" modelAttribute="claseDTO">
                <table>
                    <tr>
                        <td>Nombre:</td>
                        <td>
                            <form:input path="nombre" />
                        </td>
                    </tr>
                    <tr>
                        <td>Descripción:</td>
                        <td>
                            <form:input path="description" />
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <td>Salon:</td>
                        <td>
                            <form:input path="salon" />
                        </td>
                    </tr>
                        <td>Horario:</td>
                        <td>
                            <form:input path="horario" />
                        </td>
                    </tr>
                    <tr>
                        <td>Docente:</td>
                        <td>
                            <form:select path="docente">
                                <form:options items="${docentes}" itemValue="docente" itemLabel="docente" />
                            </form:select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Guardar" />
                        </td>
                    </tr>
                </table>
            </form:form>
    </body>

    </html>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>