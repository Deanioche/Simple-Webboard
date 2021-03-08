package com.board.service;

import com.board.mapper.IndexMapper;
import com.board.mapper.UserMapper;
import com.board.model.User;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor // 모든 필드값을 파라이터로 받는 생성자 입력.
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    @Override
    public void register(User user) {

        System.out.println(user);

        int su = userMapper.register(user);

        System.out.println("su : " + su);

    }

    @Override
    public void login() {

    }
}
