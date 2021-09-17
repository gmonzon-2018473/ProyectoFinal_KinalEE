<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Ventas</title>
    </head>
    <body>
        <div class="d-flex"> 
            <div class="col-sm-4">
                <div class="card">
                    <form action="Controlador?menu=RegistrarVenta" method="POST">
                        <div class="card-body card border-dark">
                            <div class="form-group">
                                    <label>Datos del Cliente:</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtCodigoCliente" value="${cliente.getDPICliente()}" class="form-control mr-1 border-dark" placeholder="Cod">
                                    <input type="submit" name="accion" value="BuscarCliente" class="btn btn-secondary">                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNombreCliente" value="${cliente.getNombresCliente()}" class="form-control border-dark">
                                </div>    
                            </div>
                            <div class="form-group">
                                <label>Datos del Producto:</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtCodigoProducto" value="${producto.getCodigoProducto()}" class="form-control mr-1 border-dark" placeholder="Producto">
                                    <button type="submit" name="accion" value="BuscarProducto" class="btn btn-secondary">Buscar</button>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="txtNombreProducto" class="form-control border-dark" placeholder="Producto" value="${producto.getNombreProducto()}">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="txtPrecio" value="${producto.getPrecio()}" class="form-control border-dark" placeholder="Q.00.00">
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="txtCantidad" value="1" class="form-control border-dark">
                                </div>
                                <div>
                                    <input type="text" name="txtStock" value="${producto.getStock()}" class="form-control border-dark" placeholder="Stock">
                                </div>
                            </div>
                            <!--Agregar registro-->
                            <div class="form-group">
                                <div>
                                    <button type="submit" name="accion" value="Agregar" class="btn btn-secondary">Agregar Producto</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-6 ml-auto">
                            <label>Serie No.</label>
                            <input type="text" name="txtNumSerie" class="form-control border-dark"><br>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>NUMERO</th>
                                    <th>CODIGO</th>
                                    <th>DESCRIPCION</th>
                                    <th>PRECIO</th>
                                    <th>CANTIDAD</th>
                                    <th>SUB-TOTAL</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                <tr>
                                    <td>${list.getItem()}</td>
                                    <td>${list.getCodigoProducto()}</td>
                                    <td>${list.getDescripcionProd()}</td>
                                    <td>${list.getPrecio()}</td>
                                    <td>${list.getCantidad()}</td>
                                    <td>${list.getSubTotal()}</td>
                                    <td class="d-flex">
                                        <a href="#" class="btn btn-secondary">Editar</a>
                                        <a href="#" class="btn btn-danger" style="margin-left: 10px;">Eliminar</a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-sm-6">
                            <input type="submit" name="accion" value="Generar Venta" class="btn btn-secondary">
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                        </div>
                        <div class="col-sm-4 ml-auto">
                            <input type="text" name="txtTotal" value="Q.${totalPagar}" class="form-control border-dark">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
