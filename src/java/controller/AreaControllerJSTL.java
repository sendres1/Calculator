/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.RectangleService;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *  This is the main controller for the area app
 * @author Steven
 */
@WebServlet(name = "areaControllerJSTL", urlPatterns = {"/areaControllerJSTL"})
public class AreaControllerJSTL extends HttpServlet {
       private static final String RESULT_PAGE = "bootstrapRequestResult.jsp";

   
     
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**  
     * Handles the HTTP <code>GET</code> method. Not currently used
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    response.setContentType("text/html");
List result=null;

    String submitType = request.getParameter("submit");
    out.println("submitType" + submitType);
    
    if (submitType.equals("rectangle")){
        out.println(submitType);    
            
        // parameters are name attributes in view pages
        // Here we're retrieving form content 
        String lenght = request.getParameter("length");
        String width = request.getParameter("width");
       
        
        // For some applications, we would not want to create a new one each time.
        model.RectangleService rs = new model.RectangleService();
       
        // Always a good idea to trim and/or validate input data
         
          result = rs.calcArea(lenght, width);
       
    }
    
    if (submitType.equals("circle")){
        out.println(submitType);    
            
        // parameters are name attributes in view pages
        // Here we're retrieving form content 
        String radius = request.getParameter("radius");
        
        
        // For some applications, we would not want to create a new one each time.
        model.CircleService1 cs = new model.CircleService1();
       
        // Always a good idea to trim and/or validate input data
         
          result = cs.calcArea(radius);
       
    }
         
      
    if (submitType.equals("triangle")){
        out.println(submitType);    
            
        // parameters are name attributes in view pages
        // Here we're retrieving form content 
        String base = request.getParameter("base");
        String height = request.getParameter("height");
       
        
        // For some applications, we would not want to create a new one each time.
        model.TriangleService1 rs = new model.TriangleService1();
       
        // Always a good idea to trim and/or validate input data
         
          result = rs.calcArea(base, height);
       
    }
         
        // Parameters are read only Request object properties, but attributes
        // are read/write. We can use attributes to store data for use on
        // another page.
        request.setAttribute("area", result);
        
        // This object lets you forward both the request and response
        // objects to a destination page
        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void If(boolean equals) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
