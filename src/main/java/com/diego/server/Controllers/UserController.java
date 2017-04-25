package com.diego.server.Controllers;

import com.diego.server.Objetos.User;
import com.diego.server.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserRepository repository;

    @RequestMapping("/add_user")
    public void addUser(@RequestParam(value = "nombre", defaultValue = "John") String nombre,
                        @RequestParam(value = "apellido1" , defaultValue = "Doe") String apellido1,
                        @RequestParam(value = "apellido2" , defaultValue = "") String apellido2,
                        @RequestParam(value = "email" , defaultValue = "") String email,
                        @RequestParam(value = "passwd" , defaultValue = "") String passwd,
                        @RequestParam(value = "nacionalidad" , defaultValue = "Lemuria") String nacionalidad,
                        @RequestParam(value = "fecha_nacimiento" , defaultValue = "1901") String fecha_nacimiento,
                        @RequestParam(value = "id_facultad" , defaultValue = "-1") String id_facultad){

        User user = new User();
        user.setNombre(nombre);
        user.setApellido1(apellido1);
        user.setApellido2(apellido2);
        user.setFecha_nacimiento(fecha_nacimiento);
        user.setNacionalidad(nacionalidad);
        user.setId_facultad(Integer.parseInt(id_facultad));
        user.setEmail(email);
        user.setPasswd(passwd);
        repository.save(user);
       /* if(!getUser(email, passwd)){
        	repository.save(user);
        	return true;
        }*/

        
    }
    
}
