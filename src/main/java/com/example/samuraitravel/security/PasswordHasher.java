package com.example.samuraitravel.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordHasher {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String rawPassword = "owner";
        String hashedPassword = encoder.encode(rawPassword);

        System.out.println("ハッシュ化されたパスワード: " + hashedPassword);
    }
}
