/*
package com.example.samuraitravel.controller;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.samuraitravel.entity.House;
import com.example.samuraitravel.service.HouseService;
import com.example.samuraitravel.service.OwnerService;

@Controller
public class OwnerController {

	private final OwnerService ownerService;
	private final HouseService houseService;
	
	public OwnerController(OwnerService ownerService, HouseService houseService) {
		this.ownerService = ownerService;
		this.houseService = houseService;
	}
	
	@GetMapping("/")
	public String index(Model model,
						RedirectAttributes redirectAttributes
			){
		
		Integer ownerId = ownerService.getOwnerId();
		Optional<House> optionalHouse = houseService.findHouseById(ownerId);
		
		if(optionalHouse.isEmpty()) {
			redirectAttributes.addFlashAttribute("errorMessage", "民宿が存在しません。");
			return "redirect:/";
		}
		
		House house = optionalHouse.get();
		model.addAttribute("house", house);
		
		return "";
	
	}
	
	
}


*/
//追加課題用