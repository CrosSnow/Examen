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
 * @author Constanza
 */
public class ClienteHelper {
    Session sesion=null;
    
    public ClienteHelper(){
        sesion=NewHibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<Cliente> getAll(){
        List<Cliente> lista = null;
        try {
            org.hibernate.Transaction tx = sesion.beginTransaction();
            tx.setTimeout(5);
            Query q = sesion.createQuery("from Cliente");
            lista = q.list();
            tx.commit();
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Usando metodo getAll");
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Se a obtenido todos los clientes exitosamente");
            return lista;
        } catch (Exception e) {
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.SEVERE, "No se pudo obtener los clientes de la BD:{0}", e.toString());
            return lista;
        }
    }
    
    public boolean AgregarCliente(Cliente newClient){
        try {
            org.hibernate.Transaction tx = sesion.beginTransaction();
            tx.setTimeout(5);
            Integer id = (Integer)sesion.save(newClient);
            tx.commit();
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Usando metodo AgregarCliente");
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Se a agregado el cliente {0} exitosamente", newClient.getNombreEmpresa());
            tx = null;
            return id!=0;
        } catch (Exception e) {
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.SEVERE, "No se pudo agregar cliente a la BD:{0}", e.toString());
            return false;
        }
    }
    
    public Cliente getClientePorRut(int rut){
        Cliente client = null;
        try {
            org.hibernate.Transaction tx = sesion.beginTransaction();
            tx.setTimeout(5);
            Query q = sesion.createQuery("from Cliente where rut=:param1");
            q.setInteger("param1", rut);
            client = (Cliente)q.uniqueResult();
            tx.commit();
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Usando metodo getClientePorRut");
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.INFO, "Se a obtenido el cliente {0} exitosamente",rut);
            tx = null;
            return client;
        } catch (Exception e) {
            Logger.getLogger(ClienteHelper.class.getName()).log(Level.SEVERE, "No se pudo obtener el cliente de la BD:{0}", e.toString());
            return client;
        }
    }
}
