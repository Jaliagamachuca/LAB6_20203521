package Daos;

import Beans.Cancion;
import Beans.Tour;

import java.sql.*;
import java.util.ArrayList;

public class CancionDao {
    private static String user = "root";
    private static String pass = "root";
    private static String url = "jdbc:mysql://localhost:3306/lab6sw1?serverTimezone=America/Lima";


    public ArrayList<Cancion> obtenerListaRecomendados(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        ArrayList<Cancion> listaCancion = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(url, user, pass);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT r.cancion_idcancion,\n" +
                     "       c.nombre_cancion,\n" +
                     "       c.banda,\n" +
                     "       count(*)\n" +
                     "FROM reproduccion r, cancion c\n" +
                     "where r.cancion_idcancion = c.idcancion\n" +
                     "group by cancion_idcancion \n" +
                     "having count(*) >2 \n" +
                     "order by count(*) desc")) {

            while (rs.next()) {
                Cancion cancion = new Cancion();
                int id = rs.getInt(1);
                String nombreCancion = rs.getString(2);
                String banda = rs.getString(3);
                cancion.setIdcancion(id);
                cancion.setNombre_cancion(nombreCancion);
                cancion.setBada(banda);
                listaCancion.add(cancion);
            }

        } catch (SQLException e) {
            System.out.println("No se pudo realizar la busqueda");
        }
        return listaCancion;
    }
}
