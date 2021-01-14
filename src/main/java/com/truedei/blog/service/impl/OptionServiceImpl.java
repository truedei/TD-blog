package com.truedei.blog.service.impl;

import com.truedei.blog.service.IOptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.truedei.blog.dao.OptionVoMapper;
import com.truedei.blog.modal.vo.OptionVo;
import com.truedei.blog.modal.vo.OptionVoExample;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class OptionServiceImpl implements IOptionService {

    private static final Logger LOGGER = LoggerFactory.getLogger(OptionServiceImpl.class);

    @Resource
    private OptionVoMapper optionalDao;

    @Override
    public void insertOption(OptionVo optionVo) {
        optionalDao.insertSelective(optionVo);
    }

    @Override
    public void insertOption(String name, String value) {
        LOGGER.debug("Enter insertOption method:name={},value={}", name, value);
        OptionVo optionVo = new OptionVo();

        optionVo.setName(name);
        optionVo.setValue(value);
        optionVo = optionalDao.selectByPrimaryKey(name);
        if ( optionVo == null) {
            optionVo = new OptionVo();
            optionVo.setName(name);
            optionVo.setValue(value);
            optionalDao.insertSelective(optionVo);
        } else {
            optionVo = new OptionVo();
            optionVo.setName(name);
            optionVo.setValue(value);
            optionalDao.updateByPrimaryKeySelective(optionVo);
        }
        LOGGER.debug("Exit insertOption method.");
    }

    @Override
    public List<OptionVo> getOptions() {
        return optionalDao.selectByExample(new OptionVoExample());
    }

    @Override
    public void saveOptions(Map<String, String> options) {
        if (null != options && !options.isEmpty()) {
            options.forEach(this::insertOption);
        }
    }

    @Override
    public OptionVo getOptionByName(String name) {
        return null;
    }
}
