package Servlets;

import Beans.Cancion;
import Daos.CancionDao;
import Daos.ListaCancionDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ListaCancionServlet", value = "/listaCanciones")
public class ListaCancionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "Canciones" : request.getParameter("action");
        RequestDispatcher view;

        switch (action) {
            case "Canciones":
                ListaCancionDao listaCancionDao = new ListaCancionDao();
                ArrayList<Cancion> listaCanciones = listaCancionDao.obtenerListaCanciones();
                request.setAttribute("listaCanciones", listaCanciones);

                view = request.getRequestDispatcher("listaCanciones.jsp");
                view.forward(request, response);
                break;
            case "mt":
                ListaCancionDao listaCancionTotalDao = new ListaCancionDao();
                ArrayList<Cancion> listaCancionesTotal = listaCancionTotalDao.obtenerListaCancionesTotal();
                request.setAttribute("listaCancionesTotal", listaCancionesTotal);

                view = request.getRequestDispatcher("listaCancionesTotales.jsp");
                view.forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
