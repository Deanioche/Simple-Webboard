package com.board.mapper;

import com.board.model.User;

public interface UserMapper {

    public int register(User user);
    public int login();

}
