<%-- 
    Document   : bootstrapRequestResult
    Created on : Sep 15, 2015, 5:31:19 PM
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
          <!--   what to add for bootstrap   -->
       <!-- Latest compiled and minified CSS -->
       <link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="color.css">
        <title>Rect/Circle/Triangle</title>
    </head>
    <div class="container">
    <h3 align="center">Rectangle Circle Triangle Area (JSP)</h3>
    <body>
        <div class="row">
        <text> Area of Rectangle <text/>
        <form id="calc" name="calc" method="POST" action="areaControllerJSTL">
            Length: <input type ="text" id="length" name ="length">
            
            Width: <input type="text" id="width" name ="width">
            <input type="submit" value ="rectangle" name="submit">
        </form>
        <div/>
        <div>
        <br>
         <br>
        <text> Area of Circle <text/>
        <form id="calc" name="calc" method="POST" action="areaControllerJSTL">
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
        </div>
        </div>
        
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
        <br> ${rec}
    </c:forEach>
        
    <p>
         
              <!-- Latest compiled and minified JavaScript -->
<script 
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
    </body>
</html>
