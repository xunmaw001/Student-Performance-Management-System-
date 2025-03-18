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


import com.dao.YouxiuxueshengDao;
import com.entity.YouxiuxueshengEntity;
import com.service.YouxiuxueshengService;
import com.entity.vo.YouxiuxueshengVO;
import com.entity.view.YouxiuxueshengView;

@Service("youxiuxueshengService")
public class YouxiuxueshengServiceImpl extends ServiceImpl<YouxiuxueshengDao, YouxiuxueshengEntity> implements YouxiuxueshengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YouxiuxueshengEntity> page = this.selectPage(
                new Query<YouxiuxueshengEntity>(params).getPage(),
                new EntityWrapper<YouxiuxueshengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YouxiuxueshengEntity> wrapper) {
		  Page<YouxiuxueshengView> page =new Query<YouxiuxueshengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YouxiuxueshengVO> selectListVO(Wrapper<YouxiuxueshengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YouxiuxueshengVO selectVO(Wrapper<YouxiuxueshengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YouxiuxueshengView> selectListView(Wrapper<YouxiuxueshengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YouxiuxueshengView selectView(Wrapper<YouxiuxueshengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
