package com.truedei.blog.dao;

import com.truedei.blog.entity.PageBean;
import com.truedei.blog.modal.vo.LogVo;
import com.truedei.blog.modal.vo.LogVoExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public interface LogVoMapper {
    long countByExample(LogVoExample example);

    int deleteByExample(LogVoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(LogVo record);

    int insertSelective(LogVo record);

    List<LogVo> selectByExample(LogVoExample example);

    LogVo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") LogVo record, @Param("example") LogVoExample example);

    int updateByExample(@Param("record") LogVo record, @Param("example") LogVoExample example);

    int updateByPrimaryKeySelective(LogVo record);

    int updateByPrimaryKey(LogVo record);

    List<Map<String, Object>> getLogList(@Param("pageBean")PageBean<Map<String, Object>> pageBean);

}