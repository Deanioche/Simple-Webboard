package com.board.controller;

import com.board.model.User;
import com.board.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping(value="user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/register", method=RequestMethod.POST)
    @ResponseBody
    public String register(@RequestBody User user) {

        return userService.register(user);
    }

    @RequestMapping(value="/login", method=RequestMethod.GET)
    @ResponseBody
    public void login(@RequestBody Map<String, String> map) {
        System.out.println("nick : " + map.get("nickname"));
        System.out.println("pwd : " + map.get("password"));
        System.out.println("email : " + map.get("email"));
    }
}


