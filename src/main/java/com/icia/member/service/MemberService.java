package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public int save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        return result;
    }

    public boolean login(MemberDTO memberDTO) {
       MemberDTO dto =  memberRepository.login(memberDTO);
        if (dto != null){
            return true;
        }else{
            return false;
        }
    }

    public List<MemberDTO> findAll() {
        List<MemberDTO> memberDTOList = memberRepository.findAll();
        if(memberDTOList.size() == 0){
            return null;
        }else{
            return memberDTOList;
        }
    }
}