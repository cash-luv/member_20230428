package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO, Model model) {
        int saveReult = memberService.save(memberDTO);
        if(saveReult > 0){
            model.addAttribute("result", saveReult);
            return "memberLogin";
        }else{
            return  "index";
        }
    }
//    세션(session)
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO , Model model, HttpSession session){
        boolean loginResult = memberService.login(memberDTO);
        if(loginResult){
//            model.addAttribute("MemberDTO", memberDTO.getMemberEmail());
            session.setAttribute("loginEmail",memberDTO.getMemberEmail());
            return "memberMain";
        }else {
            return "memberLogin";
        }


    }
    @GetMapping("/members")
    public  String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        for (MemberDTO memberDTO : memberDTOList) {
            System.out.println("memberDTO = " + memberDTO);
        }
        model.addAttribute("memberDTOList",memberDTOList);
        return "memberList";
    }
    @GetMapping("mypage")
    public String myPage(){
        return "memberMain";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        // 세선에 담긴 값 전체 삭제
        session.invalidate();
        // 특정 파라미터만 삭제
//        session.removeAttribute("loginEmail");
        return "redirect:/";
    }
}
