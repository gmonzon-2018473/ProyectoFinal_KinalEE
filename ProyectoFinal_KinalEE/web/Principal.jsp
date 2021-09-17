<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Menú Principal</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="nav nav-pills">
                  <li class="nav-item">
                    <a class="nav-link text-white bg-dark mr-1 ml-2 btn btn-outline-dark" aria-current="page" href="Controlador?menu=Home" target="myFrame" style="border-radius: 10px;">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link text-white bg-dark mr-1" aria-current="page" href="Controlador?menu=Producto&accion=Listar" target="myFrame" style="border-radius: 10px;">Productos</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link text-white bg-dark mr-1" aria-current="page" href="Controlador?menu=Empleado&accion=Listar" target="myFrame" style="border-radius: 10px;">Empleados</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link text-white bg-dark mr-1" aria-current="page" href="Controlador?menu=Clientes&accion=Listar" target="myFrame" style="border-radius: 10px;">Clientes</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link text-white bg-dark mr-1" aria-current="page" href="Controlador?menu=RegistrarVenta&accion=default" target="myFrame" style="border-radius: 10px;">Nueva Venta</a>
                  </li>
                </ul>
              </div>
              <div class="dropdown mr-4">
                <button style="border-radius: 10px;" class="btn btn-secondary dropdown-toggle bg-dark border border-white" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  ${usuario.getNombresEmpleado() }
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item text-center mb-1 mt-1" href="#"><img src="img/usuarioLogin.png" alt="" width="50"/></a>
                  <a class="dropdown-item text-center" href="#">${usuario.getUsuario()}</a>
                  <a class="dropdown-item text-center" href="#">@gmail.com</a>
                  <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                      <button name="accion" name="Salir" href="#" class="dropdown-item text-center">Salir</button>
                    </form>
                </div>
              </div>
          </nav>
          <div class="m-1" style="height: 620px;">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none;" src="Home.jsp"></iframe>
          </div>
          
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
