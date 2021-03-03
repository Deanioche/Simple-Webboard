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

        return "index";
    }


    @RequestMapping(value="page", method=RequestMethod.GET)
    public void page(Model model) {
        model.addAttribute("display", "/page initiated");
        System.out.println("page : " + model.getAttribute("display"));

    }
}


