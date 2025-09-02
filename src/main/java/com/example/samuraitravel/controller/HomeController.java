package com.example.samuraitravel.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.samuraitravel.entity.House;
import com.example.samuraitravel.entity.User;
import com.example.samuraitravel.service.HouseService;
import com.example.samuraitravel.service.UserService;

@Controller
public class HomeController {
	
	private final HouseService houseService;
	private final UserService userService;
	
	public HomeController(HouseService houseService, UserService userService) {
		this.houseService = houseService;
		this.userService = userService;
	}
	
	@GetMapping("/")
    public String index(Model model, Pageable pageable) {
        List<House> newHouses = houseService.findTop8HousesByOrderByCreatedAtDesc();
        List<House> popularHouses = houseService.findTop3HousesByOrderByReservationCountDesc();
        model.addAttribute("newHouses", newHouses);      
        model.addAttribute("popularHouses", popularHouses);
        
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String email = authentication.getName();

        System.out.printf(email); //確認用
        
        User user = userService.findUserByEmail(email);

        List<House> houseList = new ArrayList<>();

        if (user != null) {
            Integer Id = user.getId(); // ログイン中のオーナーのIDを取得
            houseList = houseService.findHousesByOwnerRole(Id);
            System.out.print("nullではない。");  //確認用
            } else {
            //housePage = List.empty(); // 空のページを返す
            System.out.printf("nullです。"); //確認用
        }

        
        model.addAttribute("ownerHouse", houseList);

        return "index";

	}
	
}
