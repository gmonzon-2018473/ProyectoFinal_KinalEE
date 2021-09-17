<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Empleado</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4 card col-sm-4 card border-dark" style="height: 540px">
                <div class="card-body">
                    <form action="Controlador?menu=Empleado" method="POST">
                        <div class="form-group">
                            <label>DPI:</label>
                            <input type="text" value="${empleado.getDPIEmpleado()}" name="txtDPIEmpleado" class="form-control border-dark">
                        </div>
                        <div class="form-group">
                            <label>Nombres:</label>
                            <input type="text" value="${empleado.getNombresEmpleado()}" name="txtNombresEmpleado" class="form-control border-dark">
                        </div>
                        <div class="form-group">
                            <label>TelÃ©fono:</label>
                            <input type="text" value="${empleado.getTelefonoEmpleado()}" name="txtTelefonoEmpleado" class="form-control border-dark">
                        </div>
                        <div class="form-group">
                            <label>Estado:</label>
                            <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control border-dark">
                        </div>
                        <div class="form-group mb-1">
                            <label>Usuario:</label>
                            <input type="text" value="${empleado.getUsuario()}" name="txtUsuario" class="form-control border-dark"><br>
                        </div>
                        <div class="d-flex justify-content-center">
                            <input type="submit" name="accion" value="Agregar" class="btn btn-dark mr-2">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-secondary ml-2">
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>CODIGO</td>
                            <td>DPI</td>
                            <td>NOMBRES</td>
                            <td>TELEFONO</td>
                            <td>ESTADO</td>
                            <td>USUARIO</td>
                            <td>ACCIONES</td>
                        </tr>
                    <tbody>
                        <c:forEach var="empleado" items="${empleados}">
                            <tr>
                                <td>${empleado.getCodigoEmpleado()}</td>
                                <td>${empleado.getDPIEmpleado()}</td>
                                <td>${empleado.getNombresEmpleado()}</td>
                                <td>${empleado.getTelefonoEmpleado()}</td>
                                <td>${empleado.getEstado()}</td>
                                <td>${empleado.getUsuario()}</td>
                                <td>
                                    <a class="btn btn-secondary" href="Controlador?menu=Empleado&accion=Editar&codigoEmpleado=${empleado.getCodigoEmpleado()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&codigoEmpleado=${empleado.getCodigoEmpleado()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    </thead>
                </table>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
