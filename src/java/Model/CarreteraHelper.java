/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Services.NewHibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author CrosSnow
 */
public class CarreteraHelper {
    Session sesion;
    
    public CarreteraHelper(){
        sesion = NewHibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public Carretera obtenerCarreteraPorNombre(String nombre){
        Carretera highway = null;
        try {
            org.hibernate.Transaction tx = sesion.beginTransaction();
            tx.setTimeout(5);
            Query q = sesion.createQuery("from Carretera where nombre_carretera=:param1");
            q.setString("param1", nombre);
            highway = (Carretera)q.uniqueResult();
            tx.commit();
            return highway;
        } catch (Exception e) {
            return null;
        }
    }
}
