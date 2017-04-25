package com.diego.server.Controllers;

import com.diego.server.Objetos.Pais;
import com.diego.server.Repositories.PaisRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PaisController {

    @Autowired
    private PaisRepository repository;

    @RequestMapping("/get_paises")
    public List<Pais> getPais(){

        List<Pais> listaPaises = repository.findAll();

        return listaPaises;
    }
}
