/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Steven
 */
public class TriangleService1 {

    public TriangleService1(){}
    
    public List calcArea(String base, String height) {
        double b = 0;
        double h = 0;
        double a = 0;
List area = new ArrayList();

        try {

            b = Double.valueOf(base);
            h = Double.valueOf(height);
            
            a = .5 * b * h;
            area.add("Area is " + a);

   
        } catch (NumberFormatException nfe) {
          area = null;
        }
return area;
    }

}
