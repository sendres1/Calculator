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
public class RectangleService {

    public RectangleService(){}
    
    public List calcArea(String length, String width) {
        double l = 0;
        double w = 0;
        double a = 0;
List area = new ArrayList();
        try {

            l = Double.valueOf(length);
            w = Double.valueOf(width);

            
    //   greet.add("tryit");

            a = l * w;
            area.add(a);

            

        } catch (NumberFormatException nfe) {

        }
return area;
    }

}
