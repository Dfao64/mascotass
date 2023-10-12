<%-- 
    Document   : Principal
    Created on : 4/10/2023, 11:47:54 a. m.
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Registrar canino</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body text-center">
                    <form class="form-sign" action="SvMascotas" method="POST">
                        <input type="hidden" name="action" value="agregar1">
                        <div class="form-group text-center"> 
                            <input type="hidden" name="tipoC">                     
                            <h3>Por favor ingrese la informacion del canino</h3>
                            <img src="imagenes/perro.png" alt="70" width="170"/>
                        </div>
                        <div class="form-group">
                            <label>Codigo</label>
                            <input type="text" name="codigoC" class="form-control" required>
                            <label>Nombre</label>
                            <input type="text" name="nombreC" class="form-control" required>
                            <label>Raza</label>
                            <input type="text" name="razaC" class="form-control" required>
                            <label>Color</label>
                            <input type="text" name="colorC" class="form-control" required>
                            <label>Edad</label>
                            <input type="text" name="edadC" class="form-control" required>
                            <label>Seleccione el nivel de entrenamiento</label>
                            <br><br>
                            <select name="entrenamiento" id="entrenamiento">
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                            </select>
                            <br><br>
                        </div>
                        <input type="submit" name="registrarC" value="Registrar" class="form-control btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>
