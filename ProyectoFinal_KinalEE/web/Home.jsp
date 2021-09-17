<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Principal</title>
    </head>
    <body>
        <header>
            <section class="jumbotron">
            <div class="container">
                <div class="d-flex justify-content-center">
                    <div>
                        <img style="width: 650px;" src="img/Logo_Kinal_EE.png" alt=""/>
                    </div>
                </div>
                <h2 style="font-size: 40px; text-align: center;">Electrodomésticos Esenciales</h2>
            </div>
        </section>
        </header>
        <section>
            <div>
                <h2 style="font-size: 35px; text-align: center;">¿Quiénes somos?</h2>
            </div>
            <div class="d-flex justify-content-center">
                <div>
                    <p style="text-align: center; width: 800px; font-size: 20px;">Somos una empresa dedicada a la venta de todo tipo de electrodomésticos esenciales para el hogar y oficinas. Contamos con los mejores productos de latinoamérica.</p>
                </div>
            </div>
        </section>
        <section>
            <div>
                <h2 style="margin-top: 20px; font-size: 35px; text-align: center;">Nuestra Misión</h2>
            </div>
            <div class="d-flex justify-content-center">
                <div>
                    <p style="text-align: center; width: 800px; font-size: 20px;">Nuestra misión es proporcionar a nuestros clientes los electrodomésticos de la mejor y más alta calidad.</p>
                </div>
            </div>
        </section>
        <section>
            <div>
                <h2 style="margin-top: 20px; font-size: 35px; text-align: center;">Nuestra Visión</h2>
            </div>
            <div class="d-flex justify-content-center">
                <div>
                    <p style="text-align: center; width: 800px; font-size: 20px;">Nuestra visión es ser la tienda número #1 en latinoamérica en venta de electrodomésticos.</p>
                </div>
            </div>
        </section>
        <div class="dropdown-divider" style="margin: 30px 0;"></div>
        <section>
            <h3 style="text-align: center;" class="text-secondary">Productos recomendados</h3>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active bg-dark"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1" class="bg-dark"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2" class="bg-dark"></li>
                </ol>
                <div class="carousel-inner" style="text-align: center;">
                  <div class="carousel-item">
                      <img src="img/refri.png" alt="" height="400px"/>
                  </div>
                  <div class="carousel-item">
                      <img src="img/estufa.png" alt="" height="400px"/>
                  </div>
                  <div class="carousel-item active">
                      <img src="img/tele.png" alt="" height="400px"/>
                  </div>
                </div>
                <a class="carousel-control-prev bg-dark" href="#carouselExampleIndicators" role="button" data-slide="prev" style="width: 50px; height: 50px; border-radius: 100px; margin-top: 180px; margin-left: 20px;">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next bg-dark" href="#carouselExampleIndicators" role="button" data-slide="next" style="width: 50px; height: 50px; border-radius: 100px; margin-top: 180px; margin-right: 20px;">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
              </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
