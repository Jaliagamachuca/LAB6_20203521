<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="Beans.Cancion" %>
<%
  ArrayList<Cancion> listaCanciones = (ArrayList<Cancion>) request.getAttribute("listaCancionesTotal");
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
      <h1 class='text-light'>Lista de Canciones</h1>
    </div>
  </div>
  <div class="tabla">
    <table class="table table-dark table-transparent table-hover">
      <thead>
      <tr>
        <th>ID</th>
        <th>CANCION</th>
        <th>BANDA</th>
        <th></th>
      </tr>
      </thead>

      <tbody>
      <% for (Cancion cancion : listaCanciones) { %>
      <tr>
        <td><%=cancion.getIdcancion()%></td>
        <td><%=cancion.getNombre_cancion()%></td>
        <td><%=cancion.getBada()%></td>
        <td><a class="btn btn-warning" href="<%=request.getContextPath()%>/listaCanciones?action=agregar&id=<%=cancion.getIdcancion()%>">Agregar a Favoritas</a></td>
      </tr>
      <%  }  %>
      </tbody>
    </table>
  </div>
</div>
<jsp:include page="/static/scripts.jsp"/>
</body>
</html>
