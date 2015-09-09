<%-- 
    Document   : all
    Created on : Sep 9, 2015, 2:11:46 PM
    Author     : Steven
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rect/Circle/Triangle</title>
    </head>
    <h1 align="center">Rectangle Circle Triangle Area (JSP)</h1>
    <body>
        
        <form id="calc" name="calc" method="POST" action="areaController3">
            Length: <input type ="text" id="length" name ="length">
            
            Width: <input type="text" id="width" name ="width">
            <input type="submit" value ="Calculate">
        </form>
        
        
        
        <p>

    <%
        // the getAttribute method returns a plain object, not a String or other type
        
        
        
        Object objList = request.getAttribute("area");
        List list = null;
        // cannot cast if null
        if(objList == null) {
            // do something so program doesn't crash, like
            // here we create a list with an error message
           list = new ArrayList();
           list.add("Please enter values");
        } else {
            // cast it
            list = (List)objList;
         
        }
        for(Object item : list) {
            // Notice we're outputting some HTML. Is that a good idea?
            // Also, notice we do not cast the object returned by the
            // iterator to a String. Why?
            out.print("<br> " + item.toString());
        }
        
        // THIS CODE IS OVERLY COMPLICATED and FRAGILE!!!
        // See result2.jsp for a better way
    %>
    </p>
        
    </body>
</html>
