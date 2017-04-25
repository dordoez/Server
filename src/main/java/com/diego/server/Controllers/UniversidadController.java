package com.diego.server.Controllers;

import com.diego.server.Objetos.Universidad;
import com.diego.server.Repositories.UniversidadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UniversidadController {

    @Autowired
    private UniversidadRepository repository;

    @RequestMapping("/get_universidad")
    public List<Universidad> getUniversidad(){

        List<Universidad> listaUniversidad = repository.findAll();

        return listaUniversidad;
    }
}
