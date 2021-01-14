package com.truedei.blog.dao;

import com.truedei.blog.dto.MetaDto;
import com.truedei.blog.entity.PageBean;
import com.truedei.blog.modal.vo.MetaVo;
import com.truedei.blog.modal.vo.MetaVoExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public interface MetaVoMapper {
    long countByExample(MetaVoExample example);

    int deleteByExample(MetaVoExample example);

    int deleteByPrimaryKey(Integer mid);

    int insert(MetaVo record);

    int insertSelective(MetaVo record);

    List<MetaVo> selectByExample(MetaVoExample example);

    MetaVo selectByPrimaryKey(Integer mid);

    int updateByExampleSelective(@Param("record") MetaVo record, @Param("example") MetaVoExample example);

    int updateByExample(@Param("record") MetaVo record, @Param("example") MetaVoExample example);

    int updateByPrimaryKeySelective(MetaVo record);

    int updateByPrimaryKey(MetaVo record);

    List<MetaDto> selectFromSql(Map<String, Object> paraMap);

    MetaDto selectDtoByNameAndType(@Param("name") String name, @Param("type") String type);

    Integer countWithSql(Integer mid);

    Long countLinks();

    List<Map<String, Object>> getCategories(@Param("pageBean")PageBean<Map> pageBean,@Param("pmap")Map<String,Object> pmap);
}