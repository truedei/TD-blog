package com.truedei.blog.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import com.truedei.blog.dto.Types;
import com.truedei.blog.service.IOptionService;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest
public class OptionServiceImplTest {

    @Resource
    IOptionService optionService;

    @Test
    public void testInsertOption(){
        optionService.insertOption(Types.BLOCK_IPS.getType(),"123");
    }
}