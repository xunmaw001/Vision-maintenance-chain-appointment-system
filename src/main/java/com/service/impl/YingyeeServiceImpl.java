package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YingyeeDao;
import com.entity.YingyeeEntity;
import com.service.YingyeeService;
import com.entity.vo.YingyeeVO;
import com.entity.view.YingyeeView;

@Service("yingyeeService")
public class YingyeeServiceImpl extends ServiceImpl<YingyeeDao, YingyeeEntity> implements YingyeeService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YingyeeEntity> page = this.selectPage(
                new Query<YingyeeEntity>(params).getPage(),
                new EntityWrapper<YingyeeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YingyeeEntity> wrapper) {
		  Page<YingyeeView> page =new Query<YingyeeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YingyeeVO> selectListVO(Wrapper<YingyeeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YingyeeVO selectVO(Wrapper<YingyeeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YingyeeView> selectListView(Wrapper<YingyeeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YingyeeView selectView(Wrapper<YingyeeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
