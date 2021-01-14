package com.truedei.blog.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import com.truedei.blog.dao.AttachVoMapper;
import com.truedei.blog.modal.vo.AttachVo;
import com.truedei.blog.modal.vo.AttachVoExample;
import com.truedei.blog.service.IAttachService;
import com.truedei.blog.util.DateKit;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AttachServiceImpl implements IAttachService {

    @Resource
    private AttachVoMapper attachDao;

    @Override
    public PageInfo<AttachVo> getAttachs(Integer page, Integer limit) {
        PageHelper.startPage(page, limit);
        AttachVoExample attachVoExample = new AttachVoExample();
        attachVoExample.setOrderByClause("id desc");
        List<AttachVo> attachVos = attachDao.selectByExample(attachVoExample);
        return new PageInfo<>(attachVos);
    }

    @Override
    public void save(String fname, String fkey, String ftype, Integer author) {
        AttachVo attach = new AttachVo();
        attach.setFname(fname);
        attach.setAuthorId(author);
        attach.setFkey(fkey);
        attach.setFtype(ftype);
        attach.setCreated(DateKit.getCurrentUnixTime());
        attachDao.insertSelective(attach);
    }

    @Override
    public AttachVo selectById(Integer id) {
        if (null != id) {
            return attachDao.selectByPrimaryKey(id);
        }
        return null;
    }

    @Override
    public void deleteById(Integer id) {
        if (null != id) {
            attachDao.deleteByPrimaryKey(id);
        }
    }
}
