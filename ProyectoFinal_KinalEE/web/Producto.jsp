<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Producto</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4 card border-dark" style="height: 450px">
                <div class="card-body">
                    <form action="Controlador?menu=Producto" method="POST">
                        <div class="form-group">
                            <label>Nombre del Producto:</label>
                            <input type="text" value="${producto.getNombreProducto()}" name="txtNombreProducto" class="form-control border-dark">
                        </div>
                        <div class="form-group">
                            <label>Precio:</label>
                            <input type="text" value="${producto.getPrecio()}" name="txtPrecio" class="form-control border-dark">
                        </div>
                        <div class="form-group">
                            <label>Stock:</label>
                            <input type="text" value="${producto.getStock()}" name="txtStock" class="form-control border-dark">
                        </div>
                        <div class="form-group mb-1">
                            <label>Estado:</label>
                            <input type="text" value="${producto.getEstado()}" name="txtEstado" class="form-control border-dark"><br>
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
                            <td style="text-align: center">NOMBRE DEL PRODUCTO</td>
                            <td>PRECIO</td>
                            <td>STOCK</td>
                            <td>ESTADO</td>
                            <td>ACCIONES</td>
                        </tr>
                    <tbody>
                        <c:forEach var="producto" items="${productos}">
                            <tr>
                                <td>${producto.getCodigoProducto()}</td>
                                <td>${producto.getNombreProducto()}</td>
                                <td>${producto.getPrecio()}</td>
                                <td>${producto.getStock()}</td>
                                <td>${producto.getEstado()}</td>
                                <td>
                                    <a class="btn btn-secondary" href="Controlador?menu=Producto&accion=Editar&codigoProducto=${producto.getCodigoProducto()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Eliminar&codigoProducto=${producto.getCodigoProducto()}">Eliminar</a>
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
