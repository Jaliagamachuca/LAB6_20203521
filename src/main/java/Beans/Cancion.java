package Beans;

public class Cancion {
    private int idcancion;
    private String nombre_cancion;

    private int cancionfavorita;

    public int getCancionfavorita() {
        return cancionfavorita;
    }

    public void setCancionfavorita(int cancionfavorita) {
        this.cancionfavorita = cancionfavorita;
    }

    public int getIdcancion() {
        return idcancion;
    }

    public void setIdcancion(int idcancion) {
        this.idcancion = idcancion;
    }

    public String getNombre_cancion() {
        return nombre_cancion;
    }

    public void setNombre_cancion(String nombre_cancion) {
        this.nombre_cancion = nombre_cancion;
    }

    public String getBada() {
        return bada;
    }

    public void setBada(String bada) {
        this.bada = bada;
    }

    private String bada;
}
