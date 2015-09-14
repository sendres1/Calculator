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
public class CircleService1 {

    public CircleService1(){}
    
    public List calcArea(String radius) {
        double r = 0;
        double pi = 3.1443;
        double a = 0;
List area = new ArrayList();

        try {

            r = Double.valueOf(radius);
            
            a = r*r* pi;
            area.add("Area is " + a);

   
        } catch (NumberFormatException nfe) {
          area = null;
        }
return area;
    }

}
