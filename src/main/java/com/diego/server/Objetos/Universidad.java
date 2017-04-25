package com.diego.server.Objetos;

import javax.persistence.*;

/**
 * Created by dos_6 on 20/02/2017.
 */
@Entity
@Table(name = "universidad_tm")
public class Universidad {

    @Id
    @GeneratedValue
    private int id;
    @Column
    private String nombre;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
