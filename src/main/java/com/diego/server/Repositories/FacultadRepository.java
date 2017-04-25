package com.diego.server.Repositories;

import com.diego.server.Objetos.Facultad;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by dos_6 on 22/05/2016.
 */
public interface FacultadRepository extends CrudRepository<Facultad,String> {

    List<Facultad> findAll();


}
