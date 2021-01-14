package com.truedei.blog.service.impl;

import com.github.pagehelper.PageInfo;
import com.truedei.blog.constant.WebConst;
import com.truedei.blog.service.ICommentService;
import com.truedei.blog.service.IContentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.test.context.junit4.SpringRunner;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import com.truedei.blog.dto.MetaDto;
import com.truedei.blog.dto.Types;
import com.truedei.blog.modal.vo.ContentVo;
import com.truedei.blog.service.IMetaService;

import javax.annotation.Resource;

import java.util.List;

/**
 * @author tangj
 * @date 2018/5/12 19:57
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisServiceTest {
    @Autowired
    private RedisTemplate redisTemplate;

    @Resource
    private ValueOperations<String,Object> valueOperations;

    @Resource
    private TemplateEngine templateEngine;

    @Autowired
    private IContentService contentService;

    @Autowired
    private ICommentService commentService;

    @Resource
    private IMetaService metaService;

    @Test
    public void test(){
        Context context = new Context();
        PageInfo<ContentVo> articles = contentService.getContents(1, 10);
        List<MetaDto> categories = metaService.getMetaList(Types.CATEGORY.getType(), null, WebConst.MAX_POSTS);
        context.setVariable("categories", categories);
        context.setVariable("articles", articles);
        String html = templateEngine.process("themes/default/index",context);
        System.out.println(html);
    }
}