package com.truedei.blog.server.handler;

import com.truedei.blog.server.codec.HttpJsonRequest;
import com.truedei.blog.server.codec.HttpJsonResponse;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.HttpRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.truedei.blog.dao.UserVoMapper;
import com.truedei.blog.modal.vo.UserVo;

import javax.annotation.Resource;

/**
 * @author tangj
 * @date 2018/4/15 16:46
 */
public class HttpServerHandler extends SimpleChannelInboundHandler<HttpJsonRequest>{

    @Resource
    private UserVoMapper userDao;

    private static final  Logger logger = LoggerFactory.getLogger(HttpServerHandler.class);
    @Override
    protected void channelRead0(ChannelHandlerContext ctx, HttpJsonRequest msg) throws Exception {
        HttpRequest request = msg.getRequest();
        UserVo user = (UserVo)msg.getBody();
        userDao.insert(user);
        logger.info("服务端收到消息"+user);
        ctx.writeAndFlush(new HttpJsonResponse(null,user));
    }


}
