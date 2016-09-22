/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tabletop.pkg5e.core;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
/**
 *
 * @author Kobi
 */
public class Tabletop5eCore {

    /**
     * @param args the command line arguments
     */
    public static SessionFactory factory;
    private static Character char0;
    
    public static void main(String[] args) {
        factory = new Configuration().configure().buildSessionFactory();
        char0 = new Character("Ferrum");
        if (char0.fillData() != -1) {
            System.out.println(char0.getShape());
        }
    }
    
}
