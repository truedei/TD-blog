package com.truedei.blog.controller.admin;

import com.github.pagehelper.PageInfo;
import com.truedei.blog.entity.PageBean;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import com.truedei.blog.controller.AbstractController;
import com.truedei.blog.controller.helper.ExceptionHelper;
import com.truedei.blog.dto.LogActions;
import com.truedei.blog.dto.Types;
import com.truedei.blog.exception.TipException;
import com.truedei.blog.modal.bo.RestResponseBo;
import com.truedei.blog.modal.vo.ContentVo;
import com.truedei.blog.modal.vo.ContentVoExample;
import com.truedei.blog.modal.vo.MetaVo;
import com.truedei.blog.modal.vo.UserVo;
import com.truedei.blog.service.IContentService;
import com.truedei.blog.service.ILogService;
import com.truedei.blog.service.IMetaService;
import com.truedei.blog.util.Commons;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 文章管理
 *
 * @author tangj
 * @date 2018/1/24 21:01
 */
@Controller
@RequestMapping("/admin/article")
@Transactional(rollbackFor = TipException.class)
public class ArticleController extends AbstractController {
    private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);

    @Resource
    private IContentService contentService;

    @Resource
    private IMetaService metaService;

    @Resource
    private ILogService logService;

    /**
     * 文章列表页面
     *
     * @param page
     * @param limit
     * @param request
     * @return
     */
    @GetMapping(value = "")
    public String index(@RequestParam(value = "page", defaultValue = "1") int page,
                        @RequestParam(value = "limit", defaultValue = "7") int limit,
                        HttpServletRequest request,
                        PageBean<Map> pageBean) {

        //指定翻页规则
        pageBean.setPageNumber(page);
        pageBean.setPageSize(limit);

        //指定排序规则
        pageBean.setOrderBy("created");
        pageBean.setOrderType(PageBean.OrderType.desc);

        //查询条件
        Map<String,Object> pmap = new HashMap<>();
        pmap.put("type","category");

        PageInfo<ContentVo> contentsPaginator = contentService.getContentsList(pageBean,pmap);

        request.setAttribute("articles", contentsPaginator);
        return "admin/article_list";
    }

    /**
     * 文章发表页面
     *
     * @param request
     * @return
     */
    @GetMapping(value = "/publish")
    public String newArticle(HttpServletRequest request,PageBean<Map> pageBean) {
        pageBean.setOrderBy(" desc, mid ");
        pageBean.setOrderType(PageBean.OrderType.desc);

        Map<String,Object> pmap = new HashMap<>();
        pmap.put("type","category");

        //获取分类列表
        List<Map<String,Object>> categories = metaService.getCategories(pageBean,pmap);

        request.setAttribute("categories", categories);

        //上传附件时用到的
        request.setAttribute(Types.ATTACH_URL.getType(), Commons.site_option(Types.ATTACH_URL.getType()));
        return "admin/article_edit";
    }

    /**
     * 文章编辑页面
     *
     * @param cid
     * @param request
     * @return
     */
    @GetMapping(value = "/{cid}")
    public String editArticle(@PathVariable String cid, HttpServletRequest request) {
        ContentVo contents = contentService.getContents(cid);
        request.setAttribute("contents", contents);
        List<MetaVo> categories = metaService.getMetas(Types.CATEGORY.getType());
        request.setAttribute("categories", categories);
        request.setAttribute(Types.ATTACH_URL.getType(), Commons.site_option(Types.ATTACH_URL.getType()));
        request.setAttribute("active", "article");
        return "admin/article_edit";
    }

    /**
     * 文章发表 post
     *
     * @param contents
     * @param request
     * @return
     */
    @PostMapping(value = "/publish")
    @ResponseBody
    @Transactional(rollbackFor = TipException.class)
    public RestResponseBo publishArticle(ContentVo contents, HttpServletRequest request) {
        UserVo users = this.user(request);
        contents.setAuthorId(users.getUid());
        contents.setType(Types.ARTICLE.getType());
        if (StringUtils.isBlank(contents.getCategories())) {
            contents.setCategories("默认分类");
        }
        try {
            contentService.publish(contents);
        } catch (Exception e) {
            String msg = "文章发布失败";
            return ExceptionHelper.handlerException(logger, msg, e);
        }
        return RestResponseBo.ok();
    }

    /**
     * 文章更新 post
     *
     * @param contents
     * @param request
     * @return
     */
    @PostMapping(value = "/modify")
    @ResponseBody
    @Transactional(rollbackFor = TipException.class)
    public RestResponseBo modifyArticle(ContentVo contents, HttpServletRequest request) {
        UserVo users = this.user(request);
        contents.setAuthorId(users.getUid());
        contents.setType(Types.ARTICLE.getType());
        try {
            contentService.updateArticle(contents);
        } catch (Exception e) {
            String msg = "文章编辑失败";
            return ExceptionHelper.handlerException(logger, msg, e);
        }
        return RestResponseBo.ok();
    }

    /**
     * 删除文章 post
     *
     * @param cid
     * @param request
     * @return
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    @Transactional(rollbackFor = TipException.class)
    public RestResponseBo delete(@RequestParam int cid, HttpServletRequest request) {
        try {
            contentService.deleteByCid(cid);
            logService.insertLog(LogActions.DEL_ARTICLE.getAction(), cid + "", request.getRemoteAddr(), this.getUid(request));
        } catch (Exception e) {
            String msg = "文章删除失败";
            return ExceptionHelper.handlerException(logger, msg, e);
        }
        return RestResponseBo.ok();
    }
}
