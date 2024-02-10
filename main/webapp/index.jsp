<%-- 
Document   : index
Created on : 21/11/2023, 11:33:36
Author     : elisa
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="Modelo.ConexionBd" %>
<link href="Booststrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="Booststrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>     
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Iniciar | Sesión</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
      
    </head>   
    <body>
        <section class="material-half-bg">
            <div class="cover"></div>
        </section>
        <section class="login-content">

            <div class="logo">
                <h1>SIstema de Gestión de Talento Humano INT</h1>

            </div>
            <div class="login-box">
                <form action="Servlet" method="POST" class="login-form" id="frmLogin">
                    <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>INICIAR SESION</h3>
                    <div class="form-group">
                        <label class="control-label">USUARIO</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" name="email" >
                    </div>
                    <div class="form-group">
                        <label class="control-label">CONTRASEÑA</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="password" ">
                    </div>
                    <div class="form-group btn-container">
                        <button name="enviar" type="submit" class="btn btn-block" value=" ENVIO ">INGRESAR</button>
                    </div>
                    <br>

                    <%
                        // Obtén el mensaje del atributo "cajamjsbd" del objeto request
                        String mensajeConexion = (String) request.getServletContext().getAttribute("cajamjsbd");

                        // Verifica si hay un mensaje y si es así, muéstralo
                        if (mensajeConexion != null) {
                    %>
                    <div style="position: relative; top: -17px;">
                        <p><%= mensajeConexion%></p>
                    </div>
                    <%
                        }
                    %>
                    <!--SI la peticion,exite muestre el mensaje de ereor, si es diferente de nulo, muestre lo siguiente   -->
                    <%
                        if (request.getAttribute("mensajeError") != null) {


                    %>
                     <div style="position: relative; top: -27px;"> <!-- Puedes ajustar el valor negativo según sea necesario -->
        <strong>Error:</strong> <small><%= request.getAttribute("mensajeError") %></small>
    </div>
<%
                    }
                    %>
                </form>
            </div>
        </section>




        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.bundle.js" type="text/javascript"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>	
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	


    </body>
</html>
