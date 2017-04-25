package com.diego.server.Repositories;

import com.diego.server.Objetos.Universidad;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by dos_6 on 22/05/2016.
 */
public interface UniversidadRepository extends CrudRepository<Universidad,String> {

    List<Universidad> findAll();

}
