<%-- 
    Document   : Mascotas
    Created on : 8/10/2023, 11:57:27 p. m.
    Author     : ASUS
--%>

<%@page import="Modelo.Caninos"%>
<%@page import="Modelo.Felinos"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Mascotas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Mascotas registradas</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body text-center">
                        <div class="form-group text-center">
                            <h3>Mascotas registradas</h3>
                        </div>   
    <%
       int cont = 0, contf = 0, contc = 0;
       double edad = 0,promEdad = 0;
       List<Felinos> listaM = (List) request.getSession().getAttribute("listaM");
       for(Felinos mas : listaM){
         
    %>
    <p>Codigo: <%=mas.getCodigo()%></p>
    <p>Tipo: <%=mas.getTipo()%></p>
    <p>Nombre: <%=mas.getNombre()%></p>
    <p>Raza: <%=mas.getRaza()%></p>
    <p>Color: <%=mas.getColor()%></p>
    <p>Edad: <%=mas.getEdad()%></p>
    <p>Toxoplasmosis: <%=mas.getToxoplasmosis()%></p>
    <p>----------------------------------------------</p>
    <%cont = cont+1;
      contf = contf+1;
      edad = edad+mas.getEdad();
      promEdad = edad/cont;
        }
    %>
    <%
       List<Caninos> listaM1 = (List) request.getSession().getAttribute("listaM1");
       for(Caninos mas1 : listaM1){
       int cont1 = 0;
        
    %>
    <p>Codigo: <%=mas1.getCodigo()%></p>
    <p>Tipo: <%=mas1.getTipo()%></p>
    <p>Nombre: <%=mas1.getNombre()%></p>
    <p>Raza: <%=mas1.getRaza()%></p>
    <p>Color: <%=mas1.getColor()%></p>
    <p>Edad: <%=mas1.getEdad()%></p>
    <p>Nivel de entrenamiento <%=mas1.getNivel()%></p>
    <p>----------------------------------------------</p>
    <%
      cont = cont+1;
      contc = contc+1;
      edad = edad+mas1.getEdad();
      promEdad = edad/cont;
    %>
    <%  } 
    %>
    <p>Numero total de felinos: <%=contf%></p>
    <p>Numero total de caninos: <%=contc%></p>
    <p>Numero total de mascotas: <%=cont%></p>
    <p>Promedio de edad de todas las mascotas: <%=promEdad%></p>
    <p>----------------------------------------------</p>
    <form action="SvMascotas" method="POST">
         <input type="hidden" name="action" value="eliminar">
         <label>Ingrese el codigo del felino que desea eliminar</label><br><br>
         <input type="text" name="eliminarF" class="form-control" required><br><br>
         <button type="submit" class="form-control btn btn-primary btn-block">Eliminar</button><br><br>
    </form>
    <form action="SvMascotas" method="POST">
         <input type="hidden" name="action" value="eliminar1">
         <label>Ingrese el codigo del canino que desea eliminar</label><br><br>
         <input type="text" name="eliminarC" class="form-control" required><br><br>
         <button type="submit" class="form-control btn btn-primary btn-block">Eliminar</button>
    </form><br><br>
    <a href="index.jsp" class="form-control btn btn-primary btn-block">Volver a inicio</a>
                    </div>
            </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>
