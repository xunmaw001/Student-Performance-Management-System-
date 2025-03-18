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


import com.dao.YouxiujiaoshiDao;
import com.entity.YouxiujiaoshiEntity;
import com.service.YouxiujiaoshiService;
import com.entity.vo.YouxiujiaoshiVO;
import com.entity.view.YouxiujiaoshiView;

@Service("youxiujiaoshiService")
public class YouxiujiaoshiServiceImpl extends ServiceImpl<YouxiujiaoshiDao, YouxiujiaoshiEntity> implements YouxiujiaoshiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YouxiujiaoshiEntity> page = this.selectPage(
                new Query<YouxiujiaoshiEntity>(params).getPage(),
                new EntityWrapper<YouxiujiaoshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YouxiujiaoshiEntity> wrapper) {
		  Page<YouxiujiaoshiView> page =new Query<YouxiujiaoshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YouxiujiaoshiVO> selectListVO(Wrapper<YouxiujiaoshiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YouxiujiaoshiVO selectVO(Wrapper<YouxiujiaoshiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YouxiujiaoshiView> selectListView(Wrapper<YouxiujiaoshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YouxiujiaoshiView selectView(Wrapper<YouxiujiaoshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
