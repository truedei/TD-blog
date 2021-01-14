package com.truedei.blog.service;

import com.truedei.blog.dto.MetaDto;
import com.truedei.blog.entity.PageBean;
import com.truedei.blog.modal.bo.ArchiveBo;
import com.truedei.blog.modal.bo.BackResponseBo;
import com.truedei.blog.modal.bo.StaticticsBo;
import com.truedei.blog.modal.vo.CommentVo;
import com.truedei.blog.modal.vo.ContentVo;

import java.util.List;
import java.util.Map;

/**
 * 站点服务
 *
 * @author tangj
 * @date 2018/1/23 11:43
 */
public interface ISiteService {
    /**
     * 最新收到的评论
     *
     * @param limit
     * @return
     */
    List<CommentVo> recentComments(int limit);

    /**
     * 最新发表的文章
     *
     * @param limit
     * @return
     */
    List<ContentVo> recentContents(int limit);




    /**
     * 查询一条评论
     *
     * @param coid
     * @return
     */
    CommentVo getComment(Integer coid);

    /**
     * 系统备份
     *
     * @param bk_type
     * @param bk_path
     * @param fmt
     * @return
     * @throws Exception
     */
    BackResponseBo backup(String bk_type, String bk_path, String fmt) throws Exception;

    /**
     * 获取后台统计数据
     *
     * @return
     */
    StaticticsBo getStatistics();

    /**
     * 查看文章归档
     *
     * @return
     */
    List<ArchiveBo> getArchives();

    /**
     * 获取分类 标签列表
     *
     * @param type
     * @param orderBy
     * @param limit
     * @return
     */
    List<MetaDto> metas(String type, String orderBy, int limit);

    /////////////新的或改造的

    /**
     * 查找最新的发表的文章
     * @param pageBean
     * @return
     */
    List<Map<String,Object>> selectRecentContents(PageBean<Map<String, Object>> pageBean);

    /**
     * 最新收到的评论
     * @param pageBean
     * @return
     */
    List<Map<String, Object>> selectRecentComments(PageBean<Map<String, Object>> pageBean);

    /**
     * 获取后台统计数据
     *
     * @return
     */
    Map<String, Object> getSiteData();
}
