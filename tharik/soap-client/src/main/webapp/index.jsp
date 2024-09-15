<%-- 
    Document   : index
    Created on : Jul 17, 2022, 4:36:20 PM
    Author     : tharik
--%>

<%@page import="icbt.Student"%>
<%@page import="icbt.StudentService_Service"%>
<%@page import="icbt.StudentService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>       
        <link rel="stylesheet" href="main.css"/>
    </head>
    <body>
        <h1>
            <%
              StudentService_Service service = new StudentService_Service();
              StudentService proxy = service.getStudentServicePort();
              
              out.println(proxy.hello("George"));
                
            %>
        </h1>
        
        
            <%
            
                String id = "1";
                
                if (request.getParameter("id") != null) {
                    id = request.getParameter("id");
                }
                
                Student st = proxy.getStudent(id);
                
            %>
            
            <p><%out.print(st.getId());%></p>
            <p><%out.print(st.getName());%></p>
            <p><%out.print(st.getDob());%></p>
    </body>
</html>
