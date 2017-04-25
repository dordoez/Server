package com.diego.server.Repositories;

import com.diego.server.Objetos.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by dos_6 on 22/05/2016.
 */
public interface UserRepository extends CrudRepository<User,String> {

    List<User> findAll();
    List<User> findByEmail(String email);

}
