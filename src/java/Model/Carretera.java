package Model;
// Generated 29-11-2017 13:44:13 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Carretera generated by hbm2java
 */
public class Carretera  implements java.io.Serializable {


     private String idCarretera;
     private String nombreCarretera;
     private int precioPeaje;
     private Set compras = new HashSet(0);

    public Carretera() {
    }

	
    public Carretera(String idCarretera, String nombreCarretera, int precioPeaje) {
        this.idCarretera = idCarretera;
        this.nombreCarretera = nombreCarretera;
        this.precioPeaje = precioPeaje;
    }
    public Carretera(String idCarretera, String nombreCarretera, int precioPeaje, Set compras) {
       this.idCarretera = idCarretera;
       this.nombreCarretera = nombreCarretera;
       this.precioPeaje = precioPeaje;
       this.compras = compras;
    }
   
    public String getIdCarretera() {
        return this.idCarretera;
    }
    
    public void setIdCarretera(String idCarretera) {
        this.idCarretera = idCarretera;
    }
    public String getNombreCarretera() {
        return this.nombreCarretera;
    }
    
    public void setNombreCarretera(String nombreCarretera) {
        this.nombreCarretera = nombreCarretera;
    }
    public int getPrecioPeaje() {
        return this.precioPeaje;
    }
    
    public void setPrecioPeaje(int precioPeaje) {
        this.precioPeaje = precioPeaje;
    }
    public Set getCompras() {
        return this.compras;
    }
    
    public void setCompras(Set compras) {
        this.compras = compras;
    }




}


