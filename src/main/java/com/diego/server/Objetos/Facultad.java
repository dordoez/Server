package com.diego.server.Objetos;

import javax.persistence.*;

/**
 * Created by dos_6 on 20/02/2017.
 */
@Entity
@Table(name = "facultad_tm")
public class Facultad {
    @Id
    @GeneratedValue
    private int id;
    @Column
    private String nombre;
    @Column
    private int id_universidad;

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

    public int getId_universidad() {
        return id_universidad;
    }

    public void setId_universidad(int id_universidad) {
        this.id_universidad = id_universidad;
    }
}
