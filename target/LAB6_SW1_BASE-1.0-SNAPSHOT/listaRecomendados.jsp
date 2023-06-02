<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="Beans.Cancion" %>
<%
  ArrayList<Cancion> listaRecomendados = (ArrayList<Cancion>) request.getAttribute("listaRecomendados");
%>
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
      <h1 class='text-light'>Lista de Canciones Recomendadas</h1>
    </div>
  </div>
  <div class="tabla">
    <table class="table table-dark table-transparent table-hover">
      <thead>
      <tr>
        <th>ID</th>
        <th>CANCION</th>
        <th>BANDA</th>
        <th>VER</th>
      </tr>
      </thead>

      <tbody>
      <% for (Cancion cancion : listaRecomendados) { %>
      <tr>
        <td><%=cancion.getIdcancion()%></td>
        <td><%=cancion.getNombre_cancion()%></td>
        <td><%=cancion.getBada()%></td>
        <th> <a class="btn btn-success" href="<%=request.getContextPath()%>/CancionServlet">Más de la banda</th>
      </tr>
      <%  }  %>
      </tbody>
    </table>
  </div>
</div>
<jsp:include page="/static/scripts.jsp"/>
</body>
</html>

