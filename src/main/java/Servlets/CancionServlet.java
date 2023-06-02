package Servlets;

import Beans.Cancion;
import Daos.CancionDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CancionServlet", value = "/CancionServlet")
public class CancionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "Recomendados" : request.getParameter("action");
        RequestDispatcher view;


        switch (action) {
            case "Recomendados":
                CancionDao cancionDaoRecomendada = new CancionDao();
                ArrayList<Cancion> listaCancionRecomendados = cancionDaoRecomendada.obtenerListaRecomendados();
                request.setAttribute("listaRecomendados", listaCancionRecomendados);

                view = request.getRequestDispatcher("listaRecomendados.jsp");
                view.forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
