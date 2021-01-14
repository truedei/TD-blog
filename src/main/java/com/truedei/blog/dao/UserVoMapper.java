package com.truedei.blog.dao;

import com.truedei.blog.modal.vo.UserVo;
import com.truedei.blog.modal.vo.UserVoExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author tangj
 * @date 2018/1/21 14:59
 */
@Component
public interface UserVoMapper {
    long countByExample(UserVoExample example);

    int deleteByExample(UserVoExample example);

    int deleteByPrimaryKey(Integer uid);

    int insert(UserVo record);

    int insertSelective(UserVo record);

    List<UserVo> selectByExample(UserVoExample example);

    UserVo selectByPrimaryKey(Integer uid);

    int updateByExampleSelective(@Param("record") UserVo record, @Param("example") UserVoExample example);

    int updateByExample(@Param("record") UserVo record, @Param("example") UserVoExample example);

    int updateByPrimaryKeySelective(UserVo record);

    int updateByPrimaryKey(UserVo record);

}
