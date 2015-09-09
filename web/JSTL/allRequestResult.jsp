<%-- 
    Document   : all
    Created on : Sep 9, 2015, 2:11:46 PM
    Author     : Steven
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rect/Circle/Triangle</title>
    </head>
    <h3 align="center">Rectangle Circle Triangle Area (JSP)</h3>
    <body>
        <text> Area of Rectangle <text/>
        <form id="calc" name="calc" method="POST" action="areaController3">
            Length: <input type ="text" id="length" name ="length">
            
            Width: <input type="text" id="width" name ="width">
            <input type="submit" value ="rectangle" name="submit">
        </form>
        
        <br>
         <br>
        <text> Area of Circle <text/>
        <form id="calc" name="calc" method="POST" action="areaController3">
            Radius: <input type ="text" id="length" name ="radius">
            
            <input type="submit" value ="circle" name="submit">
        </form>
        
         <br>
          <br>
        <text> Area of Triangle <text/>
        <form id="calc" name="calc" method="POST" action="areaControllerJSTL">
            Base: <input type ="text" id="base" name ="base">
            
            Height: <input type="text" id="height" name ="height">
            <input type="submit" value ="triangle" name="submit">
        </form>
        
        
        
        <p>

      <!--
        These tags are called "JSTL" tags. JSTL stands for Java Standard
        Tag Library (see the taglib declarations above). Taglibs are additional
        libraries of code that can be used to enhance the developer
        experience with new features. There are many JSTL features that you
        will come to know from your studies. Here we are using a JSTL
        loop with EL (Expression Language) statements for recommendations
        and items in that list. Note how we do not have to check for null and
        we do not have to perform a cast. However, we can only use EL via
        HTML and JSTL -- not from Java code. Compare the relative simplicity
        of this code to the result.jsp example.
    -->       
            
   
    <c:forEach var="rec" items="${area}" varStatus="rowCount">
        <br>try: ${rec}
    </c:forEach>
        
    <p><a href="form.html">Back
            
    </body>
</html>