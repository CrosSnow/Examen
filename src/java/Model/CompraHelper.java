/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Services.NewHibernateUtil;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Query;
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
    
    public List<Compra> obtenerListaPorRut(int rut){
        List<Compra> list = null;
        try {
            org.hibernate.Transaction tx = sesion.beginTransaction();
            tx.setTimeout(5);
            Query q = sesion.createQuery("from Compra where rut=:param1");
            q.setInteger("param1", rut);
            list = (List<Compra>)q.list();
            tx.commit();
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "obtenerListaPorRut");
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Se a obtenido las compras del cliente {0} exitosamente", rut);
            tx = null;
            return list;
        } catch (Exception e) {
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.SEVERE, "No se pudo obtener las compras de la BD:{0}", e.toString());
            return null;
        }
    }
}
