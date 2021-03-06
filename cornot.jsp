<%@ page contentType="text/html" session="true" %>
<%@ taglib uri="/dbtags" prefix="sql" %>
<%
String cedula = (String)request.getParameter("cedula");
String periodo = (String)request.getParameter("periodoacademico");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
  <!--Etiquetas META JSP-->
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv="Cache-Control" content="no-cache">
  <!--Etiquetas META-->
  <meta http-equiv="content-type" content="text/html;charset=iso-8859-1">
  <meta http-equiv="resource-type" content="document">
  <meta http-equiv="distribution" content="global">  
  <meta name="robots" content="all">
  <meta name="rating" content="general">  
  <meta name="author" content="Leonardo Caballero,  (leonardo_caballero@email.com)">
  <meta name="creator" content="Leonardo Caballero,  (leonardo_caballero@email.com)">
  <meta name="copyright" content="Colegio Universitario Dr. Rafael Belloso Chac&iacute;n, Todos los Derechos Reservados &copy; Estado Zulia, Maracaibo, Venezuela - 1998, 2004">
  <meta name="owner" content="Colegio Universitario Dr. Rafael Belloso Chac�n, (webmater@cunibe.org)">
  <meta name="organization" content="Dr. Rafael Belloso Chac&iacute;n">
  <meta name="subject" content="Colegio Universitario Dr. Rafael Belloso Chac�n, CUNIBE">
  <meta name="keywords" content="CUNIBE, Tecnologicos, Administraci&oacute;n de Empresas, Mercadeo, Contadur&iacute;a, Dise&ntilde;o Gr&aacute;fico, Electr&oacute;nica, Inform&aacute;tica, Mantenimiento Industrial, Preescolar, Relaciones Industriales, Turismo, Dr. Oscar Belloso Medina, La Instituci&oacute;n, Rese&ntilde;a Hist&oacute;rica, Objetivos Institucionales, Misi&oacute;n, Visi&oacute;n, Estructura Organizativa, Perfil de Ingreso, Perfil Profesional, Pensun de Estudio, Proceso de Admisi&oacute;n, Requisitos de Ingreso, Inscripci&oacute;n, Formas de Pago, Banos Autorizados, Laboratorio de Computaci&oacute;n, Laboratorio de Electr&oacute;nica y F&iacute;sica, Tecnolog&iacute;a Educativa, Servicios M&eacute;dicos, Coordinaci&oacute;n de Cultura, Coordinaci&oacute;n de Deportes, Servicio de Internet, TELENOTAS, Campus, Fotos, Galeria de imagenes, Biblioteca, Vistas 360&deg;, Vistas 360 grados, Ubicaci&oacute;n, Consultas Acad&eacute;micas, Corte de Notas, Indice Acad&eacute;mico, Horarios de Clases, PAI, PAN, Perio, Periodo Acad&eacute;mico Normal, Periodo Acad&eacute;mico Intensivo, Eventos, EXPOCUNIBE, Estudios, Contactanos, Tecnol&oacute;gicos, Universidad, T&eacute;cnico Superior Universitario, T&eacute;cnico, Universitario, Dr. Rafael Belloso Chac&iacute;n, Colegio Universitario, Dr. Rafael Belloso Chac&iacute;n, www.cunibe.org, www.cunibe.org/bibio, www.cunibe.org/expocunibe, biblio, Bibliotecas, Consultas, Venezuela, Computaci&oacute;n, Internet, On line, en linea, Investigaci&oacute;n">
  <meta name="description" content="CUNIBE, nuestro inter&eacute;s primordial se dirige a la formaci&oacute;n de T&eacute;cnicos Superiores Universitarios; impartiendo a los estudiantes una s&oacute;lida preparaci&oacute;n altamente profesional y de definida significaci&oacute;n universitaria. A fin de lograr profesionales que garanticen el desarrollo pleno de las potencialidades socioecon&oacute;micas nacionales.">
  <!--Incono del CUNIBE-->
  <link rel="shortcut icon" href="favicon.ico"> 
  <!--Hoja de Estilos para todo el documento-->
  <link href="styles.css" rel="stylesheet" type="text/css">
  <!--Hoja de Estilos para la barra de scroll del browser-->
  <style type="text/css"> 
    <!-- 
     body 
     { 
       scrollbar-face-color: #3184BD;
       scrollbar-shadow-color: #689cd0;
       scrollbar-highlight-color: #F1F2F4;
       scrollbar-3dlight-color: #000000; 
       scrollbar-darkshadow-color: #000000;
       scrollbar-track-color: #84B5D6;
       scrollbar-arrow-color: #ffffff
      }
    -->
   </style>
   <!--Libreria Script del Software Softkink DHTML Menu-->
   <script type="text/javascript" language="JavaScript1.2" src="imagenes/stm31.js"></script>
   <!--Libreria de Funciones JavaScript-->
   <script type="text/javascript" language="JavaScript1.2" src="js/stm312.js"></script>
   <!--Funciones JavaScript-->   
   <script type="text/javascript" language="JavaScript1.2">
     /*
      Auto Maximize Window Script- By Nick Lowe (nicklowe@ukonline.co.uk)
      For full source code, 100's more free DHTML scripts, and Terms Of Use
      Visit http://www.dynamicdrive.com
     */

     top.window.moveTo(0,0);
     if (document.all)
     {
      top.window.resizeTo(screen.availWidth,screen.availHeight);
     }
     else if (document.layers||document.getElementById)
     {
      if (top.window.outerHeight < screen.availHeight || top.window.outerWidth < screen.availWidth)
      {
       top.window.outerHeight = screen.availHeight;
       top.window.outerWidth = screen.availWidth;
      }
     }
   </script> 
  <title>Colegio Universitario &quot;Dr. Rafael Belloso Chac&iacute;n&quot; - M&oacute;dulo de Consultas - Corte de Notas</title>
 </head>
 <body background="imagenes/background.gif" bgcolor="#FFFFFF">
    <!-- Tabla de Banner de la imagen superior -->
    <jsp:include page="bannerarriba.jsp"/>
    <!-- Tabla de titulo de CORTE DE NOTAS -->
    <table width="719" border="0" cellpadding="2" cellspacing="3" align="center">
        <tr>
            <td bgcolor="#3184bd">
                <div align="center">
                    <table width="713" border="0" bgcolor="#3184bd" cellpadding="4">
                        <tr>
                            <td bgcolor="white">
                                <div align="center">
                                    <b><font color="#310000" face="tahoma,arial">CORTE DE NOTAS</font></b>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <br>
    <sql:connection id="conn1">
      <sql:url>jdbc:informix-sqli://IP:PUERTO/BASE_DE_DATOS:informixserver=online_tcp</sql:url>
      <sql:driver initParameter="ifxDriver"/>
      <sql:userId initParameter="dbUserId"/> 
      <sql:password initParameter="dbPassword"/>
    </sql:connection>
    <!-- 1 era Consulta de Datos Personales del Alumno -->
      <sql:statement id="stmt1" conn="conn1">
      <tr> 
        <sql:query>SELECT cedula,nombres_alumno,apellidos_alumno,nummero_ficha,carrera FROM datos_personales WHERE cedula = '<sql:escapeSql><%=cedula%></sql:escapeSql>'</sql:query> 
        <sql:resultSet id="rset1">
    <table align="center" width="588" border="1" cellspacing="0" cellpadding="2">
      <tr> 
        <td bgcolor="#3184bd" width="25%"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;C&eacute;dula de Identidad:</font></b></td>
        <td bgcolor="#FFFFFF" width="75%"><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="1"/></font></td>
      </tr>
      <tr> 
        <td bgcolor="#3184bd" width="25%"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Nombres:</font></b></td>
        <td bgcolor="#FFFFFF" width="75%"><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="2"/></font></td>
      </tr>
      <tr> 
        <td bgcolor="#3184bd" width="25%"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Apellidos:</font></b></td>
        <td bgcolor="#FFFFFF" width="75%"><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="3"/></font></td>
      </tr>
      <tr> 
        <td bgcolor="#3184bd" width="25%"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;N&uacute;mero de Ficha:</font></b></td>
        <td bgcolor="#FFFFFF" width="75%"><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="4"/></font></td>
      </tr>
      <tr> 
        <td bgcolor="#3184bd" width="25%"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Carrera:</font></b></td>
        <td bgcolor="#FFFFFF" width="75%"><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="5"/></font></td>
      </tr>
      <!--<tr> 
        <td bgcolor="#3184bd" width="25%"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Horario de CLases:</font></b></td>
        <td bgcolor="#FFFFFF" width="75%"><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="5"/></font></td>
      </tr>-->
    </table>
        </sql:resultSet>
    <br>
    <!-- 2 da Consulta de Corte de Notas del Alumno -->
        <sql:query> SELECT cedula,materia,seccion,codigo,p1,p2,p3,p4,p5,peso_total,n1,n2,n3,n4,n5,a1,a2,a3,a4,a5,porcentaje_total FROM corte_notas WHERE cedula = '<sql:escapeSql><%=cedula%></sql:escapeSql>' AND periodo = '<sql:escapeSql><%=periodo%></sql:escapeSql>'</sql:query>
        <sql:resultSet id="rset2">
    <table align="center" width="588" border="0" cellspacing="0" cellpadding="2">
      <tr bgcolor="#333399"> 
        <td bgcolor="#3184bd" width="431"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Materia</font></b></td>
        <td bgcolor="#3184bd" width="80"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Secci&oacute;n</font></b></td>
        <td bgcolor="#3184bd" width="80"><b><font color="#FFFFFF" face="tahoma,arial">&nbsp;C&oacute;digo</font></b></td>
      </tr>
      <tr bgcolor="#66CCFF"> 
        <td bgcolor="#84b5d6" width="431"><b><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="2"/></font></b></td>
        <td bgcolor="#84b5d6" width="80"><b><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="3"/></font></b></td>
        <td bgcolor="#84b5d6" width="80"><b><font color="#310000" face="tahoma,arial">&nbsp;<sql:getColumn position="4"/></font></b></td>
      </tr>
    </table>
    <table align="center" width="588" border="0" cellspacing="0" cellpadding="2">
      <tr bgcolor="#FFFFFF"> 
        <td width="96"><b><font color="#310000" face="tahoma,arial">&nbsp;Evaluacion:</font></b></td>
        <td width="80"><b><font color="#310000" face="tahoma,arial">1</font></b></td>    
        <td width="80"><b><font color="#310000" face="tahoma,arial">2</font></b></td>
        <td width="80"><b><font color="#310000" face="tahoma,arial">3</font></b></td>
        <td width="80"><b><font color="#310000" face="tahoma,arial">4</font></b></td>
        <td width="80"><b><font color="#310000" face="tahoma,arial">5</font></b></td>
        <td width="80"><b><font color="#310000" face="tahoma,arial">Total</font></b></td>
      </tr>
      <tr bgcolor="#FFFFFF"> 
        <td width="96"><b><font color="#310000" face="tahoma,arial">&nbsp;Peso:</b></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="5"/>%</font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="6"/>%</font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="7"/>%</font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="8"/>%</font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="9"/>%</font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="10"/>%</font></td>
      </tr>
      <tr bgcolor="#FFFFFF"> 
        <td width="96"><b><font color="#310000" face="tahoma,arial">&nbsp;Nota:</b></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="11"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="12"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="13"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="14"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="15"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial">&nbsp;</font></td>
      </tr>
      <tr bgcolor="#FFFFFF"> 
        <td width="96"><b><font color="#310000" face="tahoma,arial">&nbsp;Acumulado:</font></b></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="16"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="17"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="18"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="19"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="20"/></font></td>
        <td width="80"><font color="#310000" face="tahoma,arial"><sql:getColumn position="21"/></font></td>    
      </tr>
    </table>
        </sql:resultSet>
    <table align="center" width="588" border="1" cellspacing="0" cellpadding="2">
      <tr bgcolor="#3184bd">
        <td align="right" colspan="5">
        <sql:wasEmpty>
           <b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Se ha introducido correctamnete la c&eacute;dula de identidad o no est&aacute; inscrito para este per&iacute;odo acad&eacute;mico.&nbsp;</font></b>
        </sql:wasEmpty>
        <sql:wasNotEmpty>
            <b><font color="#FFFFFF" face="tahoma,arial"><sql:rowCount/>&nbsp;materias inscritas para este per&iacute;odo acad&eacute;mico.&nbsp;</font></b>
        </sql:wasNotEmpty>
        </td>
      </tr>
      </sql:statement>
      <tr bgcolor="#3184bd">
        <td align="right" colspan="5">
            <b><font color="#FFFFFF" face="tahoma,arial">&nbsp;Proy&eacute;ctate al Futuro, &nbsp;Incorp&oacute;rate CUNIBE.&nbsp;</font></b>
        </td>
      </tr>
    </table>
    <!-- Tabla de Menu Desplegable -->
    <jsp:include page="menuconperiodo.jsp"/>
    <!-- Tabla de Pie de P�gina -->
    <jsp:include page="barraabajo.jsp"/>
    <sql:closeConnection conn="conn1"/>
 </body>
</html>
