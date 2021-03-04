package com.board.controller;

import com.board.model.Member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class IndexController {

    //메인창
    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("display", "page.jsp");

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
    public void register(@RequestParam Map<String, String> map) {
        System.out.println("register");
        System.out.println("nick : " + map.get("email"));
        //System.out.println("nick : " + member.getNickname());
    }
}


