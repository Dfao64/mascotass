 package Modelo;

public abstract class Mascotas{
    private int codigo;
    protected String tipo;
    private String nombre;
    private String raza;
    private String color;
    private int edad;
    public Mascotas(){
    
    }
    public Mascotas(int codigo,String tipo, String nombre, String raza, String color, int edad) {
        this.codigo = codigo;
        this.tipo = tipo;
        this.nombre = nombre;
        this.raza = raza;
        this.color = color;
        this.edad = edad;
    }
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }  

    public void borrarMascota(int eliminarM) {
        
    }
}
