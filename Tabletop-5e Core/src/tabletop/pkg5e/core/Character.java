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
public class Character extends Token {
    private int id = -1;
    
    public Character ()
    {}
    
    public Character(String name) {
        super(name);
    }
    
    public Character(int id) {
        this.id = id;
    }
    
    public Character (String name, String shape) {
        super(name, shape);
    }
    
    public Character (String name, String shape, int id) {
        super(name, shape);
        this.id = id;
    }
    
    public int getId () {
        return id;
    }
    
    public void setId (int id) {
        this.id = id;
    }
    
    private int findId() {
        if (getName() == null) {
            System.out.println("Character has no name.");
            return -1;
        }
        else {
            Session session = Tabletop5eCore.factory.openSession();
            Transaction tx = session.beginTransaction();
            Character character = (Character) session.createQuery("FROM Character WHERE name='" + getName() + "'").list().get(0);
            setId(character.getId());
            tx.commit();
            session.close();
        }
        return 0;
    }
    
    public int fillData() {
        if (getId() == -1) {
            if (findId() == -1) {
                return -1;
            }
        }
        Session session = Tabletop5eCore.factory.openSession();
        Transaction tx = session.beginTransaction();
        Character character = (Character) session.get(Character.class, this.getId());
        setName(character.getName());
        setShape(character.getShape());
        tx.commit();
        session.close();
        return 0;
    }
}
