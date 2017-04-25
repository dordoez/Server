package com.diego.server.Objetos;

import javax.persistence.*;

@Entity
@Table(name="menu")
public class Menu {
	@Id
    @GeneratedValue
    private int id;
    @Column
    private String orden_plato;
    @Column
    private String nombre_plato;
    @Column
    private String dia_semana;
    @Column
    private int id_facultad;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrden_plato() {
		return orden_plato;
	}
	public void setOrden_plato(String orden_plato) {
		this.orden_plato = orden_plato;
	}
	public String getNombre_plato() {
		return nombre_plato;
	}
	public void setNombre_plato(String nombre_plato) {
		this.nombre_plato = nombre_plato;
	}
	public String getDia_semana() {
		return dia_semana;
	}
	public void setDia_semana(String dia_semana) {
		this.dia_semana = dia_semana;
	}
	public int getId_facultad() {
		return id_facultad;
	}
	public void setId_facultad(int id_facultad) {
		this.id_facultad = id_facultad;
	}
}
