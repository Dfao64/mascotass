package Modelo;

public class Felinos extends Mascotas {

    private String toxoplasmosis;

    public Felinos() {
    }

    public Felinos(int codigo, String tipo, String nombre, String raza, String color, int edad, String toxoplasmosis) {
        super(codigo, tipo, nombre, raza, color, edad);
        this.toxoplasmosis = toxoplasmosis;
    }
    
    public String getTipo() {
        return tipo = "Felino";
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getToxoplasmosis() {
        return toxoplasmosis;
    }

    public void setToxoplasmosis(String toxoplasmosis) {
        this.toxoplasmosis = toxoplasmosis;
    }

}
