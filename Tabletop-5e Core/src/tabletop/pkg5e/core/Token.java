/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tabletop.pkg5e.core;

/**
 *
 * @author Kobi
 */
public class Token {
    private String name;
    private String shape;
    
    public Token ()
    {}
     
    public Token (String n) {
        this.name = n;
    }
    
    public Token (String name, String shape) {
        this.name = name;
        this.shape = shape;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getShape() {
        return shape;
    }
    
    public void setShape(String shape) {
        this.shape = shape;
    }
}
