package com.board.service;

import com.board.mapper.IndexMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor // 모든 필드값을 파라이터로 받는 생성자 입력.
public class IndexServiceImpl implements IndexService {

    private IndexMapper indexMapper;

    @Override
    public void initiateServer() {

        int su = indexMapper.initiateServer();

        System.out.println("su : " + su);
    }
}
