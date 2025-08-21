/*
package com.example.samuraitravel.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.samuraitravel.entity.House;
import com.example.samuraitravel.repository.HouseRepository;
import com.example.samuraitravel.repository.OwnerRepository;

@Service
public class OwnerService {

	private final HouseRepository houseRepository;
	private final OwnerRepository ownerRepository;
	
	public OwnerService(HouseRepository houseRepository, OwnerRepository ownerRepository) {
		this.houseRepository = houseRepository;
		this.ownerRepository = ownerRepository;
	}
	
	
	//ログイン中のオーナーのIDを取得する。
	public Integer getOwnerId() {
		return ownerRepository.getId();
	}
	
	//指定されたオーナーIDを持つ民宿をページングで取得する。
	public Page<House> findHouseByOwnerId(Integer id, Pageable pageable){
		return houseRepository.findByOwnerId(id, pageable);		
	}
	
}

*/

//追加課題用