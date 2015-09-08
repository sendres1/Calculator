<%-- 
    Document   : rectangleRequest.jsp
    Created on : Sep 8, 2015, 12:29:32 PM
    Author     : Steven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Resquest</title>
    </head>
    <body>
        
        <form id="calc" name="calc" method="POST" action="areaController">
            name: <input type ="text"
                         lenght ="length"
                         width ="width"
                         >
            submit: <input type="submit"
                           value ="areaRectangle">
    </body>
</html>
