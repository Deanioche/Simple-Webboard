package com.board.service;

import com.board.mapper.IndexMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class IndexServiceImpl implements IndexService{

    //오토 와이어해줄필요 x 구현 클래스 없기떄문에
    private IndexMapper indexMapper;

    @Override
    public void initiateServer() {

        System.out.println("됐다!");

        int su = indexMapper.initiateServer();

        System.out.println("su : " + su);
    }
}
