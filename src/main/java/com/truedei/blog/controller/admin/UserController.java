package com.truedei.blog.controller.admin;

import com.truedei.blog.controller.AbstractController;
import com.truedei.blog.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 用户管理：待开发
 * @author zhengh
 * @date 2021年1月2日01:19:59
 */
@Controller
@RequestMapping("admin/user")
public class UserController extends AbstractController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Resource
    private IUserService userService;



    @GetMapping(value = "")
    public String index(@RequestParam(value = "page", defaultValue = "1") int page,
                        @RequestParam(value = "limit", defaultValue = "15") int limit, HttpServletRequest request) {
        return "admin/user_list";
    }



}
