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


import com.dao.YouxiubanzhurenDao;
import com.entity.YouxiubanzhurenEntity;
import com.service.YouxiubanzhurenService;
import com.entity.vo.YouxiubanzhurenVO;
import com.entity.view.YouxiubanzhurenView;

@Service("youxiubanzhurenService")
public class YouxiubanzhurenServiceImpl extends ServiceImpl<YouxiubanzhurenDao, YouxiubanzhurenEntity> implements YouxiubanzhurenService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YouxiubanzhurenEntity> page = this.selectPage(
                new Query<YouxiubanzhurenEntity>(params).getPage(),
                new EntityWrapper<YouxiubanzhurenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YouxiubanzhurenEntity> wrapper) {
		  Page<YouxiubanzhurenView> page =new Query<YouxiubanzhurenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YouxiubanzhurenVO> selectListVO(Wrapper<YouxiubanzhurenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YouxiubanzhurenVO selectVO(Wrapper<YouxiubanzhurenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YouxiubanzhurenView> selectListView(Wrapper<YouxiubanzhurenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YouxiubanzhurenView selectView(Wrapper<YouxiubanzhurenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
