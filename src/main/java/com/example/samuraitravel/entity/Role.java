package com.example.samuraitravel.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "roles")
@Data
public class Role {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name = "id")
   private Integer id;
       
   @Column(name = "name")
   private String name;  
}

//@IDおよび@GeneratedValue
//主キーに付ける。strategy以下でAUTO_INCREMENTを指定したカラムの自動採番。

//@Data
//Lombokが提供するアノテーションでゲッター、セッターを生成