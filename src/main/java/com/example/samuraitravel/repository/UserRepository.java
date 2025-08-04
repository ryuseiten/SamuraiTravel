package com.example.samuraitravel.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.samuraitravel.entity.User;

//認証用のリポジトリ
public interface UserRepository extends JpaRepository<User, Integer>{
	//<エンティティのクラス型、主キーのデータ型>
	public User findByEmail(String email);
	
	public Page<User> findByNameLikeOrFuriganaLike(String nameKeyword, String furiganaKeyword, Pageable pageable);
}
