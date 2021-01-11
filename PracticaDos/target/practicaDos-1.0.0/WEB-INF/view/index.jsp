<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  
}
#cuadro{
width:930px;
background: #050505;
color: #ffffff;
margin: auto;
margin-top: 20px;
padding: 5px 5px 30px 5px;
border-top: 35px solid#141414;
border-bottom: 35px solid#141414;
border-right: 35px solid #141414;
border-left: 35px solid #141414;
border-radius: 26px;
opacity: 0.7;

}
td, th {
  border: 1px solid #dddddd;
  text-align: center;  
  padding: 8px;  

}
h5{  
  text-align: left;
  padding: 8px;
  color:dodgerblue;  
  margin-top: 100px;
  margin-left: 75px;
  font-size: 20px;
  float: left;
}
h6{    
  
  text-align: center;
  color: #ffffff;
  font-size: 14px;  
  line-height: 0;
}
</style>        
    </head>
    <body>         
        <STYLE type="text/css">
        h2, h3 { text-align: center}
        </STYLE>
        <h2 style="color:dodgerblue;font-size:30px;">Listado de clientes activos</h2>
        <hr style="border-color:orange;">                 
                   
        <a href="proveedor"><h5>Crear Cliente</h5></a>        
        <div id="cuadro">            
            <form>
        <table>
            <thead>
                <tr>
                    <th>Código</th>                    
                    <th>Nombre Comercial</th>                    
                    <th>Contacto</th>
                    <th>Dirección</th>                    
                    <th>Correo Electrónico</th>
                    <th>País</th>
                    <th colspan="2">Opciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${proveedorList}" var="proveedor">
                    <tr>
                        <td>${proveedor.codigo}</td>                         
                        <td>${proveedor.nombreComercial}</td>                        
                        <td>${proveedor.contacto}</td>
                        <td>${proveedor.direccion}</td>        
                        <td>${proveedor.email}</td>
                        <td>${proveedor.pais}</td>
                <td><a href="proveedor/codigo/${proveedor.codigo}"><h6>Modificar</h6></a></td>
                <td><a href="proveedor/eliminar/${proveedor.codigo}"><h6>Inhabilitar</h6></a></td>                 
                
                    </tr>
                </c:forEach>            
            </tbody>
        </table>
        </form>
        </div>
        <br/><br/><br/><br/><br/>
        
        
        <STYLE type="text/css">
        h2, h3 { text-align: center}
        </STYLE>
        <h2 style="color:dodgerblue;font-size:30px;">Listado de clientes inhabilitados</h2>
        <hr style="border-color:orange;">                         
        <div id="cuadro">
            <form>
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre Comercial</th>
                    <th>Contacto</th>                    
                    <th>Dirección</th>   
                    <th>Correo electrónico</th>                    
                    <th>País</th>                                        
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${eliminadosList}" var="proveedor">                     
                    <tr>
                        <td>${proveedor.codigo}</td>                         
                        <td>${proveedor.nombreComercial}</td>                        
                        <td>${proveedor.contacto}</td>
                        <td>${proveedor.direccion}</td>      
                        <td>${proveedor.email}</td>
                        <td>${proveedor.pais}</td>                        
                    </tr>
                </c:forEach>           
            </tbody>
        </table>
        </form>
        </div>
    </body>   
</html>
