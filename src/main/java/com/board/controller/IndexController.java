package com.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

    //메인창
    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("display", "page.jsp");
        System.out.println("display : " + model.getAttribute("display"));

        return "index";
    }


    @RequestMapping(value="/page", method=RequestMethod.GET)
    @ResponseBody
    public void page(Model model) {

        model.addAttribute("display", "/page 실행");
    }
}


