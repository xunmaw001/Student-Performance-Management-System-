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


import com.dao.JiaoxuekejianDao;
import com.entity.JiaoxuekejianEntity;
import com.service.JiaoxuekejianService;
import com.entity.vo.JiaoxuekejianVO;
import com.entity.view.JiaoxuekejianView;

@Service("jiaoxuekejianService")
public class JiaoxuekejianServiceImpl extends ServiceImpl<JiaoxuekejianDao, JiaoxuekejianEntity> implements JiaoxuekejianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiaoxuekejianEntity> page = this.selectPage(
                new Query<JiaoxuekejianEntity>(params).getPage(),
                new EntityWrapper<JiaoxuekejianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiaoxuekejianEntity> wrapper) {
		  Page<JiaoxuekejianView> page =new Query<JiaoxuekejianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiaoxuekejianVO> selectListVO(Wrapper<JiaoxuekejianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiaoxuekejianVO selectVO(Wrapper<JiaoxuekejianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiaoxuekejianView> selectListView(Wrapper<JiaoxuekejianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiaoxuekejianView selectView(Wrapper<JiaoxuekejianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
