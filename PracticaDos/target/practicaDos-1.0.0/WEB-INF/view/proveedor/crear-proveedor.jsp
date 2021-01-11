<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cliente</title>
        <style>
        #cuadro{
width:450px;
background: #050505;
color: #ffffff;
margin: auto;
margin-top: 5px;
padding: 5px 5px 60px 5px;
border-top: 35px solid#141414;
border-bottom: 35px solid#141414;
border-right: 35px solid #141414;
border-left: 35px solid #141414;
border-radius: 6px;
opacity: 0.7;

}
button{
    color: dodgerblue;
    margin-top: 54px;
    margin-left: 35px;
    border-radius: 6px;    
    width: 85px;
}  
input, textarea{    
    margin-right: 85px;    
    border-radius: 10px;
    float: right;
}    
label{     
    margin-top: 54px;
    margin-left: 25px;
    padding: 5px 10px;
    line-height: 30px;
    }
errors{    
    margin-right: 25px;
    text-align: right;
    float: right;
    }
h5{    
  text-align: center;
  padding: 8px;
  color:dodgerblue;
  font-size: 20px;  
  
}
</style>
    </head>
    <body>
        <STYLE type="text/css">
        h2, h3 { text-align: center}
        </STYLE>
        <h2 style="color:dodgerblue;font-size:30px;">Crear cliente</h2>
        <hr style="border-color:orange;">                 
        
        <h5><span>${mensaje}</span></h5>

        <div id="cuadro">            
            
        <form:form method="post" 
                   action="${pageContext.servletContext.contextPath}/proveedor/crear" 
                   modelAttribute="proveedor">

            <form:label path="codigo" >Código del proveedor:</form:label> 
            <form:input path="codigo"   />
            <form:errors path="codigo"  />
            <br/>
            
            <form:label path="nombreComercial">Nombre Comercial:</form:label> 
            <form:input path="nombreComercial" />
            <form:errors path="nombreComercial"  />
            <br/>            
            
            <form:label path="contacto">Contacto:</form:label> 
            <form:input path="contacto" />
            <form:errors path="contacto"  />
            <br/>            
            
            <form:label path="direccion">Dirección:</form:label> 
            <form:textarea path="direccion" />
            <form:errors path="direccion"  />
            <br/>    
            
            <form:label path="email">Correo electrónico:</form:label> 
            <form:input path="email" />
            <form:errors path="email"  />
            <br/>    
            
            <form:label path="pais">País:</form:label> 
            <form:input path="pais" />
            <form:errors path="pais"  />
            <br/>                      
            
            <form:button class="">Crear</form:button>
        </form:form>
        </div>
    </body>
    <a href="${pageContext.servletContext.contextPath}/index"><h5>Ver el listado de clientes</h5></a>
</html>
