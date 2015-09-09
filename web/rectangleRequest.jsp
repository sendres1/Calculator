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
        <title>Rectangle Request</title>
    </head>
    <body>
        
        <form id="calc" name="calc" method="POST" action="areaController">
            Length: <input type ="text" id="length" name ="length">
            
            Width: <input type="text" id="width" name ="width">
            <input type="submit" value ="Calculate">
        </form>
    </body>
</html>
