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


import com.dao.BanjichengjiDao;
import com.entity.BanjichengjiEntity;
import com.service.BanjichengjiService;
import com.entity.vo.BanjichengjiVO;
import com.entity.view.BanjichengjiView;

@Service("banjichengjiService")
public class BanjichengjiServiceImpl extends ServiceImpl<BanjichengjiDao, BanjichengjiEntity> implements BanjichengjiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BanjichengjiEntity> page = this.selectPage(
                new Query<BanjichengjiEntity>(params).getPage(),
                new EntityWrapper<BanjichengjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BanjichengjiEntity> wrapper) {
		  Page<BanjichengjiView> page =new Query<BanjichengjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BanjichengjiVO> selectListVO(Wrapper<BanjichengjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BanjichengjiVO selectVO(Wrapper<BanjichengjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BanjichengjiView> selectListView(Wrapper<BanjichengjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BanjichengjiView selectView(Wrapper<BanjichengjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
