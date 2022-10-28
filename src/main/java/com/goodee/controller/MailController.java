package com.goodee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.MailSendService;

@Controller
public class MailController {
   @Autowired
   private MailSendService mailService;
   


   
   //회원가입 페이지 이동
   
   
   //이메일 인증
   @PostMapping("/mailCheck")
   @ResponseBody
   public String mailCheck(@RequestBody String email) {
      System.out.println("이메일 인증 요청이 들어옴!");
      System.out.println("이메일 인증 이메일 : " + email);
      return mailService.joinEmail(email);   
   }
   
   
}