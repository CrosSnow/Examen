/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Services.NewHibernateUtil;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Session;

/**
 *
 * @author CrosSnow
 */
public class CompraHelper {
    Session sesion;
    
    public CompraHelper(){
        sesion = NewHibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public boolean agregarCompra(Compra newCompra){
        try {
            org.hibernate.Transaction tx = sesion.beginTransaction();
            tx.setTimeout(5);
            Integer id = (Integer)sesion.save(newCompra);
            tx.commit();
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Usando metodo agregarCompra");
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Se a agregado la compra del cliente {0} exitosamente", newCompra.getCliente().getNombreEmpresa());
            tx = null;
            return id!=0;
        } catch (Exception e) {
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.SEVERE, "No se pudo agregar cliente a la BD:{0}", e.toString());
            return false;
        }
    }
}
