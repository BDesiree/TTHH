<%-- 
    Document   : newjsp
    Created on : 01/12/2023, 21:15:34
    Author     : elisa
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <body>
        <!--Comienza el contenedor principal-->
        <div class="wrapper">
            <!--Inicia el menú de encabezado-->
            <div class="header">
                <div class="header-menu">
                    <!-- Título del encabezado -->
                    <div class="title">SGTH INT</div>
                    <!-- Lista de iconos en el encabezado -->
                    <ul>
                        <!-- items de la Lista de iconos  -->
                        <strong style="color: white; margin-top: 9px;">Desiree Bajaña Barreiro</strong>


                        <li><a href="index.jsp"><i class="fas fa-user-circle"></i></a></li>
                    </ul>
                </div>
            </div>
            <!--header menu end-->
        </div>
        <!-- Mover la etiqueta nav fuera del contenedor del encabezado -->
        <nav>
            <ul class="nav">
                <li><a href="inicioAdmi.jsp" style="text-transform: uppercase;   text-align: center;"><i class="fas fa-home"></i> Inicio</a></li>
                <li><a href="#" style="text-transform: uppercase;    text-align: center;">Empleados &nbsp; <i class="fas fa-chevron-down"></i> </a>
                    <ul style=" max-height: 400px; overflow-y: auto;"> 
                        <li><a href="agregarEmple.jsp">Datos personales</a></li>
                        <li><a href="agregarEnfer.jsp">Discapacidad/Enfermedad</a></li>
                        <li><a href="agregarContac.jsp">Contacto Emergencia</a></li>
                        <li><a href="agregarConyu.jsp">Datos Conyuge</a></li>
                        <li><a href="agregarHijos.jsp">Datos Hijos</a></li>
                        <li><a href="agregarCapa.jsp">Capacitaciónes</a></li>
                        <li><a href="agregarBanco.jsp">Cuenta Bancaria</a></li>
                        <li><a href="agregarSituacion.jsp">Situación Senescyt</a></li>
                        <li><a href="agregarForma.jsp">Formación Laboral</a></li>
                        <li><a href="agregarTrayec.jsp">Trayectoria Laboral</a></li>
                        <li><a href="agregarEvalua.jsp">Evaluación Desempeño</a></li>
                        <li><a href="agregarInclu.jsp">Inclusión Laboral</a></li>

                    </ul>
                </li>
                <li><a href="#" style="text-transform: uppercase;  text-align: center;">Asistencias &nbsp;<i class="fas fa-chevron-down"></i></a>
                    <ul style="width: 182px;">
                        <li><a href="agregarAsis.jsp">Agregar</a></li>
                      
                        <li><a href="hojaRuta.jsp">Ruta</a></li>
                    </ul>
                </li>
                <li><a href="#" style="text-transform: uppercase;  text-align: center;">Permisos &nbsp;<i class="fas fa-chevron-down"></i> </a>
                    <ul style="width: 170px;">
                        <li><a href="agregarPer.jsp">Agregar</a></li>

                    </ul>
                </li>

            </ul>
        </nav>

        <!-- Inicia el contenedor principal -->
        <div class="container container-form">
            <!-- Contenedor del formulario -->
            <form action="ServletTraye" method="POST">
                <div class="form first">   <!-- Inicia la sección del formulario -->
                    <div class="details personal">     <!-- Sección de detalles personales del empleado -->
                        <div class="title"><h3>Datos Trayectoria</h3>   </div>  <!-- Título del formulario -->
                        <br>  <div class="fields">    <!-- Inicia la sección de campos  -->
                            <!-- Campos del formulario -->

                            <div class="input-field">
                                <label for="examIden">N° Identificación</label>
                                <input type="number" name="idempleados"   required  >   <!-- asegura de que el usuario complete el campo  -->
                            </div>

                            <div class="input-field">
                                <label for="examIden">Nombre Institución</label>
                                <input type="text" name="trayeInstitucionNombre"  required  >   <!-- asegura de que el usuario complete el campo  -->
                            </div>
                            <div class="input-field"> 
                                <label for="exampl">Tipo Institución</label>
                                <select  name="trayeTipoInstitucion" required onchange="handleEstadoChange()">  <!--  Inicia un elemento de lista desplegable.  -->
                                    <option disabled selected></option>
                                    <option>Publica</option>
                                    <option>Privada</option>
                                    <option>Mixta</option>
                                </select>
                            </div> 
                            <div class="input-field">
                                <label for="exampl"> Unidad Administrativa</label>
                                <input type="text" name="trayeUnidad"  required>
                            </div>

                            <div class="input-field">
                                <label for="exampl">Nombre Puesto</label>
                                <input type="text" name="trayePuesto"  required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Fecha Ingreso</label>
                                <input type="date" name="trayeFechaIngreso" required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Fecha Salida</label>
                                <input type="date" name="trayeFechaSalida" required>
                            </div>
                            <div class="input-field"> 
                                <label for="exampl">Motivo salida</label>
                                <select id="tieneHijos" name="trayeMotivoSalida" required onchange="handleEstadoChange()">  <!--  Inicia un elemento de lista desplegable.  -->
                                    <option disabled selected></option>
                                    <option>Renuncia</option>
                                    <option>Terminacion contrato</option>
                                    <option>Despedido</option>
                                </select>
                            </div> 
                            <div class="input-field"> 
                                <label for="exampl">Modalidad ingreso</label>
                                <select  name="trayeModalidadIngreso" required onchange="handleEstadoChange()"> <!--  Inicia un elemento de lista  <!--  Inicia un elemento de lista desplegable.  -->
                                    <option disabled selected></option>
                                    <option>Contrato</option>
                                    <option>Nombramiento</option>
                                    <option>Libre nombramiento</option>
                                </select>
                            </div> 
                        </div> 

                    </div>
                    <div class="row align-items-center">
                       
                        <div class="col mr-2">
                            <!-- Contenido a la izquierda -->
                            <button id="btnModi" name="modirConta" type="submit" class="nextBtn pull-right" value="ModiEnfer">
                                <span class="btnText">Editar</span>
                            </button>

                        </div>
                        <div class="col mr-2">
                            <!-- Contenido a la izquierda -->
                            <button id="btnGuardar" name="guardarTraye" type="submit" class="nextBtn pull-right" value="GuardarTraye">
                                <span class="btnText">Guardar</span>
                            </button>

                        </div>
                    </div>
                    <%
                        if (request.getAttribute("caja9") != null) {
                            out.println(request.getAttribute("caja9"));
                    %>


                    <%
                        }
                    %>
                </div>
            </form>
            
        </div>
    </body>




</html>