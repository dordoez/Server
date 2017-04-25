package com.diego.server.Controllers;

import com.diego.server.Objetos.Facultad;
import com.diego.server.Repositories.FacultadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class FacultadController {

    @Autowired
    private FacultadRepository repository;

    @RequestMapping("/get_facultad_universidad")
    public List<Facultad> getFacultad(@RequestParam(value = "id_universidad" , defaultValue = "-1") int id_universidad){

        List<Facultad> listaFacultad = repository.findAll();
        List<Facultad> listaFacultad_id = new ArrayList<>();

        for(Facultad facultad : listaFacultad){
            if(facultad.getId_universidad() == id_universidad){
                listaFacultad_id.add(facultad);
            }
        }

        return listaFacultad_id;
    }

    @RequestMapping("/get_facultad")
    public List<Facultad> getFacultad(){

        List<Facultad> listaFacultad = repository.findAll();

        return listaFacultad;
    }
}
