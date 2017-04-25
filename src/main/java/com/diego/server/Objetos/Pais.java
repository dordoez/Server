package com.diego.server.Objetos;

import javax.persistence.*;

/**
 * Created by dos_6 on 20/02/2017.
 */
@Entity
@Table(name = "pais_tm")
public class Pais {
    @Id
    @GeneratedValue
    private String id;
    @Column
    private String nombre;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
