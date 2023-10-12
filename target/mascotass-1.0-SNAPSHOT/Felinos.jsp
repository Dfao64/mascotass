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
        <title>Registrar felino</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body text-center">
                    <form class="form-sign" action="SvMascotas" method="POST">
                        <input type="hidden" name="action" value="agregar">
                        <div class="form-group text-center">
                            <h3>Por favor ingrese la informacion del felino</h3>
                            <img src="imagenes/f.png" alt="70" width="170"/>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="tipoF">
                            <label>Codigo</label>
                            <input type="text" name="codigoF" class="form-control" required>
                            <label>Nombre</label>
                            <input type="text" name="nombreF" class="form-control" required>
                            <label>Raza</label>
                            <input type="text" name="razaF" class="form-control" required>
                            <label>Color</label>
                            <input type="text" name="colorF" class="form-control" required>
                            <label>Edad</label>
                            <input type="text" name="edadF" class="form-control" required>
                            <label>¿El felino se encuentra libre toxoplasmisis?</label>
                            <br><br>
                            <select name="toxoplasmosis" id="toxoplasmosis">
                                <option value="si">Si</option>
                                <option value="no">No</option>
                            </select>
                            <br><br>
                        </div>
                        <input type="submit" name="registrarF" value="Registrar" class="form-control btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>
