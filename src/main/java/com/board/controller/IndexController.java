package com.board.controller;

import com.board.model.Member;
import com.board.service.IndexService;
import com.board.service.IndexServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;

    int count = 0;

    //메인창
    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("display", "page.jsp");
        System.out.println("index count : " + count + "번째 실행");
        indexService.initiateServer();
        count++;

        return "index";
    }


    @RequestMapping(value="page", method=RequestMethod.GET)
    @ResponseBody
    public void page(Model model) {
        model.addAttribute("display", "/page initiated");
        System.out.println("page : " + model.getAttribute("display"));
    }

    @RequestMapping(value="register", method=RequestMethod.POST)
    @ResponseBody
    public void register(@RequestBody Member member) {
        // System.out.println("nick : " + map.get("email"));
        System.out.println("nick : " + member.getNickname());
        System.out.println("pwd : " + member.getPassword());
        System.out.println("email : " + member.getEmail());
        indexService.initiateServer();

    }

    @RequestMapping(value="login", method=RequestMethod.GET)
    @ResponseBody
    public void login(@RequestBody Map<String, String> map) {
        System.out.println("nick : " + map.get("nickname"));
        System.out.println("pwd : " + map.get("password"));
        System.out.println("email : " + map.get("email"));
    }
}


