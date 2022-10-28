package com.goodee.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class MailSendService {
   @Autowired
   private JavaMailSenderImpl mailSender;
   private int authNumber; 
   // 난수 발생(여러분들 맘대러)
   
      public void makeRandomNumber() {
         // 난수의 범위 111111 ~ 999999 (6자리 난수)
         Random r = new Random();
         int checkNum = r.nextInt(888888) + 111111;
         System.out.println("인증번호 : " + checkNum);
         authNumber = checkNum;
      }
      
      
            //이메일 보낼 양식! 
      public String joinEmail(String email) {
         makeRandomNumber();
         String setFrom = "nu052308@naver.com"; // email-config에 설정한 자신의 이메일 주소를 입력 
         String toMail = email;
         String title = "회원 가입 인증 이메일 입니다."; // 이메일 제목 
         String content = 
               "홈페이지를 방문해주셔서 감사합니다." +    //html 형식으로 작성 ! 
                   "<br><br>" + 
                "인증 번호는 " + authNumber + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요."; //이메일 내용 삽입
         mailSend(setFrom, toMail, title, content);
         return Integer.toString(authNumber);
      }
      
      //이메일 전송 메소드
      public void mailSend(String setFrom, String toMail, String title, String content) { 
         
         try {
            MimeMessage msg = mailSender.createMimeMessage();
                
               // 받는 사람을 설정 (수신자, 받는사람의 이메일 주소 객체를 생성해서 수신자 이메일주소를 담음)
               msg.addRecipient(RecipientType.TO, new InternetAddress(toMail));
    
               /*
                * createMimeMessage() : MimeMessage객체를 생성시킴 (이것을 이용해서 메시지를 구성한 뒤 메일 발송)
                * addRecipient() : 메시지의 발신자를 설정 InternetAddress() : 이메일 주소 getReceiveMail() :
                * 수신자 이메일 주소
                */
    
               // 보내는 사람(이메일주소+이름)
               // (발신자, 보내는 사람의 이메일 주소와 이름을 담음)
               // 이메일 발신자
               msg.addFrom(new InternetAddress[] { new InternetAddress(setFrom)});
               
    
               // 이메일 제목 (인코딩을 해야 한글이 깨지지 않음)
               msg.setSubject(title, "utf-8");
               // 이메일 본문 (인코딩을 해야 한글이 깨지지 않음)
               msg.setContent(content, "text/html; charset=utf-8");

    
               // 이메일 보내기
               mailSender.send(msg);
         } catch (MessagingException e) {
            e.printStackTrace();
         }
      }
      
   
}