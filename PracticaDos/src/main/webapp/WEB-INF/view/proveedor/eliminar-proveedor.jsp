
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inhabilitar Cliente</title>
        <style>
            #cuadro{
                width:450px;
                background: #050505;
                color: #ffffff;
                margin: auto;
                margin-top: 40px;
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
                margin-top: 8px;
                margin-left: 35px;
                border-radius: 6px;    
                width: 95px;
            }  
            input, textarea{
                margin-right: 85px;    
                border-radius: 10px;
                float: right;
            }    
            label{ 
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
            p{
                margin-top: 54px;
                margin-left: 40px;
            }    
        </style>
    </head>
    <body>
        <STYLE type="text/css">
            h2, h3 { text-align: center}
        </STYLE>
        <h2 style="color:dodgerblue;font-size:30px;">Inhabilitar cliente</h2>
        <hr style="border-color:orange;">  

        <h5><span>${mensaje}</span></h5>

        <div id="cuadro">                    

            <form:form method="post"  
                       action="${pageContext.servletContext.contextPath}/proveedor/eliminar"
                       modelAttribute="proveedor">

                <form:label path="codigo">Código:</form:label> 
                <form:input path="codigo" readonly="true"  />
                <br/>             

                <form:label path="nombreComercial">Nombre Comercial:</form:label> 
                <form:input path="nombreComercial" readonly="true" />
                <br/>

                <form:label path="contacto">Contacto:</form:label> 
                <form:input path="contacto" readonly="true" />
                <br/>            

                <form:label path="direccion">Dirección:</form:label> 
                <form:textarea path="direccion" readonly="true" />
                <br/>

                <form:label path="email">Correo electrónico:</form:label> 
                <form:input path="email" readonly="true" />
                <br/>

                <form:label path="pais">País:</form:label> 
                <form:input path="pais" readonly="true" />
                <br/>

                <p>¿Está seguro que desea inhabilitar este cliente?</p>            
                <form:button class="">Sí, inhabilitarlo</form:button>           

            </form:form>
        </div>
        <br/>
        <a href="${pageContext.servletContext.contextPath}"><h5>Regresar al listado de clientes</h5></a>
        <br/>    
    </body>
</html>
