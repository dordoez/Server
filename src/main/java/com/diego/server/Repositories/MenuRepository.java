package com.diego.server.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.diego.server.Objetos.Menu;

public interface MenuRepository extends CrudRepository<Menu,String>{
	
	List<Menu> findAll();
}
