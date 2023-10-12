package Modelo;

public class Caninos extends Mascotas {

    private int nivel;

    public Caninos() {
    }

    public Caninos(int codigo, String tipo, String nombre, String raza, String color, int edad, int nivel) {
        super(codigo, tipo, nombre, raza, color, edad);
        this.nivel = nivel;
    }

    public String getTipo() {
        return tipo = "Canino";
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

}
