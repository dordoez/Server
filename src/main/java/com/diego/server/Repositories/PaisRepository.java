package com.diego.server.Repositories;

import com.diego.server.Objetos.Pais;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by dos_6 on 20/02/2017.
 */
public interface PaisRepository extends CrudRepository<Pais,String> {

    List<Pais> findAll();

}
