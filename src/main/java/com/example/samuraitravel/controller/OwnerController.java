package com.example.samuraitravel.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.samuraitravel.entity.House;
import com.example.samuraitravel.entity.User;
import com.example.samuraitravel.service.HouseService;
import com.example.samuraitravel.service.UserService;

@Controller
@RequestMapping("/owner")
public class OwnerController {
	
	private final UserService userService;
	private final HouseService houseService;

	public OwnerController(UserService userService, HouseService houseService) {
		this.userService = userService;
		this.houseService = houseService;
	}
	
	@GetMapping
	public String index(Model model,
						RedirectAttributes redirectAttributes,
						Pageable pageable)
	{
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String email = authentication.getName();
		
		User user = userService.findUserByEmail(email);
		
		Integer Id = user.getId(); //ログイン中のオーナーのIDを取得
		Page<House> housePage = houseService.findHousesByOwnerRole(Id, pageable);
		
		model.addAttribute("house", housePage);
		
		return "owner/index";
		
	}
}

