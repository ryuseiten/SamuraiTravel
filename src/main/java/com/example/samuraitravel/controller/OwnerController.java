package com.example.samuraitravel.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.samuraitravel.entity.House;
import com.example.samuraitravel.form.HouseEditForm;
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
	
	@GetMapping("/owner/houses/{id}")
	public String show(@PathVariable("id") Integer id, Model model) {
	    House house = houseService.findById(id);
	    if (house == null) {
	        throw new ResponseStatusException(HttpStatus.NOT_FOUND, "民宿が見つかりません");
	    }
	    model.addAttribute("house", house); 
	    return "owner/show";
	}
	
	@GetMapping("/owner/houses/{id}/edit")
	public String edit(@PathVariable(name="id") Integer id, RedirectAttributes redirectAttributes, Model model) {
	
		House house = houseService.findById(id);
		HouseEditForm houseEditForm =new HouseEditForm(house.getName(), null, house.getDescription(), house.getPrice(), house.getCapacity(), house.getPostalCode(), house.getAddress(), house.getPhoneNumber());
		
		model.addAttribute("house", house);
		model.addAttribute("houseEditForm", houseEditForm);
		
		return "owner/edit";
		
	}
	
	@PostMapping("/owner/houses/{id}/update")
	public String update(@ModelAttribute @Validated HouseEditForm houseEditForm,
						 BindingResult bindingResult,
						 @PathVariable(name = "id") Integer id,
						 RedirectAttributes redirectAttributes,
						 Model model)
	{
		House house = houseService.findById(id);
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("house", house);
			model.addAttribute("houseEditForm", houseEditForm);
			
			return "owner/edit";   //千田メモ return HTMLが表示されているパス？
		}
		
		houseService.updateHouse(houseEditForm, house);
		redirectAttributes.addFlashAttribute("successMessage", "民宿情報を編集しました。"); //千田めも ←のコメントでてこない
		
		return "redirect:/owner/houses/" + id; // 詳細ページに戻す  
		//千田メモ redirect 表示させるHTMLのパス？
		//リダイレクト先のURL=>それに対応するGetMappingが必要。

	}
	
}

