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
                        <strong style="color: white; margin-top: 8px;">Desiree Bajaña Barreiro</strong>


                        <li><a href="index.jsp"><i class="fas fa-user-circle"  style=" margin-top: 5px;"></i></a></li>
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
            <form action="ServletEmple" method="POST">
                <div class="form first">   <!-- Inicia la sección del formulario -->
                    <div class="details personal">     <!-- Sección de detalles personales del empleado -->
                        <div class="title"><h3>Datos Personales</h3>   </div>  <!-- Título del formulario -->
                        <br>  <div class="fields">    <!-- Inicia la sección de campos  -->
                            <!-- Campos del formulario -->
                            <div class="input-field">
                                <label for="examIden">N° Identificación</label>
                                <input type="number" name="idempleados"  id="idempleados"  required  >   <!-- asegura de que el usuario complete el campo  -->
                            </div>
                            <div class="input-field">
                                <label for="exampl">Nacionalidad</label>
                                <input type="text" name="empNacionalidad"   required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Nombres</label>
                                <input type="text" name="empNombres"  required>
                            </div>
                            <div class="input-field">
                                <label for="exampl"> Apellidos</label>
                                <input type="text" name="empApellidos"  required>
                            </div>

                            <div class="input-field">
                                <label for="exampl">Sexo</label> <!--  Inicia un elemento de lista desplegable.  -->
                                <select id="sexo" name="empSexo" required onchange="handleEstadoChange()">
                                    <option disabled selected></option>
                                    <option>Masculino</option>
                                    <option>Femenino</option>
                                </select>
                            </div>
                            <div class="input-field"><label for="exampl">Género</label> <!--  Inicia un elemento de lista desplegable.  -->
                                <select id="genero" name="empGenero" required onchange="handleEstadoChange()">
                                    <option disabled selected></option>
                                    <option>Hombre</option>
                                    <option>Mujer</option>
                                </select>
                            </div>
                            <div class="input-field"> <label for="exampl">Estado Civil</label> <!--  Inicia un elemento de lista desplegable.  -->
                                <select id="civil" name="empEstadoCivil" required onchange="handleEstadoChange()">
                                    <option disabled selected></option>
                                    <option>Casado/a</option>
                                    <option>Soltero/a</option>
                                    <option>Divorciado/a</option>
                                    <option>Viudo/a</option>
                                </select>
                            </div>

                            <div class="input-field"> <label for="exampl">Etnia</label> <!--  Inicia un elemento de lista desplegable.  -->
                                <select id="etnia" name="empEtnia" required onchange="handleEstadoChange()">
                                    <option disabled selected></option>
                                    <option>INDIGENA</option>
                                    <option>AFROECUATORIANO </option>
                                    <option>NEGRO</option>
                                    <option>MULATO</option>
                                    <option>MONTUBIO</option>
                                    <option>MESTIZO</option>
                                    <option> BLANCO</option>
                                    <option>OTRO</option>
                                </select>
                            </div>
                            <div class="input-field"> <label for="exampl">Tipo de Sangre</label> <!--  Inicia un elemento de lista desplegable.  -->
                                <select id="sangre" name="empTipoSangre" required onchange="handleEstadoChange()">
                                    <option disabled selected></option>
                                    <option>A RH  ( + )</option>
                                    <option>A RH  ( - )</option>
                                    <option>B RH  ( + )</option>
                                    <option>B RH  ( - )</option>
                                    <option>AB RH ( + )</option>
                                    <option>AB RH ( - )</option>
                                    <option>O RH  ( + )</option>
                                    <option>O RH  ( - )</option>

                                </select>
                            </div>

                            <div class="input-field">
                                <label for="exampl">Teléfono Domicilio</label>
                                <input type="number" name="empTelefonoDomicilio"   required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Teléfono Móvil</label>
                                <input type="number" name="empTelefonoMovil" required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Fecha Nacimiento</label>
                                <input type="date"name="empFechaNacido" required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Correo Personal</label>
                                <input type="email"name="empCorreo"  required>
                            </div>

                            <div class="input-field">
                                <label for="exampl">Ult. Declaración Bienes</label>
                                <input type="date" name="empFechaDeclaracionBienes" required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Prim. vez Sect. Público </label>
                                <input type="date" name="empFechaSectorPublico" required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Usuario </label>
                                <input type="text" name="empUsuario" required>
                            </div>
                            <div class="input-field">
                                <label for="exampl">Contraseña </label>
                                <input type="text" name="empContraseña"  class="password">

                            </div>

                        </div> 

                        <div class="details ID">    <!-- Inicia una sección con la clase -->

                            <div class="input-field">
                                <label for="exampl">Dirección </label>
                                <input type="text" name="empDireccion"  placeholder="Provincia-Cantón-Parroquia-CallePrincipal-Calle Secundaria-Número Calle" required>
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-center">
                      
                        <div class="col mr-2">
                            <!-- Contenido a la izquierda -->
                            <button id="btnModi" name="modirEmple" type="submit" class="nextBtn pull-right" value="ModiEmple">
                                <span class="btnText">Editar</span>
                            </button>

                        </div>

                        <div class="col mr-2">
                            <!-- Contenido a la izquierda -->
                            <button id="btnGuardar" name="guardarEmple" type="submit" class="nextBtn pull-right" value="GuardarEmple">
                                <span class="btnText">Guardar</span>
                            </button>

                        </div>
                        <%
                            if (request.getAttribute("caja") != null) {
                                out.println(request.getAttribute("caja"));
                        %>


                        <%
                            }
                        %>
                    </div>
                </div>
            </form>

            

            </div>
    </body>



</html>