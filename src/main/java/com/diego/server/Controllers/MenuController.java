package com.diego.server.Controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.diego.server.Objetos.Menu;
import com.diego.server.Repositories.MenuRepository;

@RestController
public class MenuController {
	
	 @Autowired
	 private MenuRepository menuRepository;
	
	 @RequestMapping("/get_menu")
	public List<Menu> getMenu(@RequestParam(value = "dia_semana", defaultValue = "Ayer") String dia_semana,
			@RequestParam(value = "id_facultad", defaultValue = "-1") int id_facultad){
		 
		 List<Menu> listaMenu = menuRepository.findAll();
		 List<Menu> menu_seleccionado = new ArrayList<>();
		 
		 for(Menu menu : listaMenu){
			 if(menu.getDia_semana().equalsIgnoreCase(dia_semana) && menu.getId_facultad() == id_facultad){
				 menu_seleccionado.add(menu);
			 }
		 }
		return menu_seleccionado;
	 }
	
}
