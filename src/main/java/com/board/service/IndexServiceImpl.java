package com.board.service;

import com.board.mapper.IndexMapper;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor // 모든 필드값을 파라이터로 받는 생성자 입력.
public class IndexServiceImpl implements IndexService {

    private IndexMapper indexMapper;

    @Override
    public int initiateServer() {

        System.out.println("initiateServer 실행 시도");
        System.out.println("init : " + (indexMapper.initiateServer() == 1? "성공" : "실패"));
        return indexMapper.print_server_count();
    }

}
