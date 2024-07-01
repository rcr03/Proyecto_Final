<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ethereal Threads</title>
        <script src="https://kit.fontawesome.com/9a1840e0c6.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            .navbar-custom {
                background-color: #FFC0CB; 
            }
            .navbar-custom .navbar-brand,
            .navbar-custom .nav-link {
                color: #000000; 
            }

            .btn-menta {
                color: #17a2b8;
                background-color: #d1ecf1;
                border-color: #17a2b8;
            }
            .btn-menta:hover {
                color: #fff;
                background-color: #17a2b8;
                border-color: #17a2b8;
            }
            
            .btn-comprar {
                background-color: #E6E6FA; /* Lila color */
                border-color: #9370DB; /* Darker lila border */
                color: #9370DB; /* Darker lila text color */
            }

            .btn-comprar:active {
                background-color: #9370DB; /* Darker lila color */
                color: #ffffff; /* White text */
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-custom">
            <a class="navbar-brand" href="#">Ethereal Threads</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?accion=home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Deals of the day</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?accion=Carrito"><i class="fas fa-cart-plus">(<label style="color: crimson">${contador}</label>)</i>Carrito</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-menta my-2 my-sm-0" type="submit">Search</button>
                </form>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Iniciar 
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container mt-2">
            <div class="row">
                <c:forEach var="p" items="${productos}">
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header text-center">
                            <label>${p.getNombres()}</label>
                        </div>
                        <div class="card-body">
                            <i>$${p.getPrecio()}</i>
                            <img src="ControladorIMG?id=${p.getId()}" width="210" height="235">
                        </div>
                        <div class="card-footer text-center">
                            <label>${p.descripcion}</label>
                            <div>
                                <a href="Controlador?accion=AgregarCarrito&id=${p.getId()}" class="btn btn-outline-info">Agregar a Carrito</a>
                                <a href="Controlador?accion=Comprar&id=${p.getId()}" class="btn btn-comprar">Comprar</a>
                            </div>
                        </div>
                    </div>
                </div>    
                </c:forEach>
            </div>
        </div>
    
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
