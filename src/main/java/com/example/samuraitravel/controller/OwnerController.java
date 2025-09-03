package com.example.samuraitravel.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.server.ResponseStatusException;

import com.example.samuraitravel.entity.House;
import com.example.samuraitravel.service.HouseService;
import com.example.samuraitravel.service.UserService;

@Controller
public class OwnerController {
	
	private final UserService userService;
	private final HouseService houseService;

	public OwnerController(UserService userService, HouseService houseService) {
		this.userService = userService;
		this.houseService = houseService;
	}
	
/*	@GetMapping("/owner/houses/{id}")
	public String index(Model model, Pageable pageable) {
		
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String email = authentication.getName();

        System.out.printf(email); //確認用
        
        User user = userService.findUserByEmail(email);

        List<House> houseList = new ArrayList<>();

        if (user != null) {
            Integer Id = user.getId(); // ログイン中のオーナーのIDを取得
            houseList = houseService.findHousesByOwnerRole(Id);
           
            } else {
            System.out.printf("★ownercontrollerがnullです★"); //確認用
        }

        
        model.addAttribute("ownerHouse", houseList);

        return "owner/show";
	}
*/
	@GetMapping("/owner/houses/{id}")
	public String show(@PathVariable("id") Integer id, Model model) {
	    House house = houseService.findById(id);
	    if (house == null) {
	        throw new ResponseStatusException(HttpStatus.NOT_FOUND, "民宿が見つかりません");
	    }
	    model.addAttribute("house", house); 
	    return "owner/show";
	}
	
}

