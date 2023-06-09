<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <!--Colocar como value: nombre de la presente página -->
    <jsp:include page="/static/head.jsp">
        <jsp:param name="title" value="Bienvenido"/>
    </jsp:include>
    <body>
        <div class='container'>
            <!--Colocar como value: artistas, canciones, bandas, tours o tpc  (dependiendo de la pagina a la que corresponda) -->
            <jsp:include page="/includes/navbar.jsp">
                <jsp:param name="page" value=""/>
            </jsp:include>
            <div class="pb-5 pt-4 px-3 titlecolor d-flex justify-content-between align-items-center">
                <div class="col-lg-6">
                    <h1 class='text-light'>Bienvenido, estamos listos para el mundial 2026</h1>
                </div>
            </div>
            <div class="tabla">
                <table class="table table-dark table-transparent table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>INTEGRANTES</th>
                            <th>CODIGO</th>
                            <th>CORREO</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>RICARDO ALFONSO ALVARADO RUIZ
                            </td>
                            <td>20190057
                            </td>
                            <td>a20190057@pucp.edu.pe
                            </td>
                        </tr>

                        <tr>
                            <td>2
                            </td>
                            <td>JULIO CÉSAR ALIAGA MACHUCA
                            </td>
                            <td>20203521
                            </td>
                            <td>a20203521@pucp.edu.pe
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <jsp:include page="/static/scripts.jsp"/>
    </body>
</html>
