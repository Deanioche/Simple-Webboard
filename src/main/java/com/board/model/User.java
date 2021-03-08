package com.board.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

@Data
@Component
@ToString
public class User {
    String email;
    String nickname;
    String password;
}
