package com.dao;

import com.entity.XuexiaojianjieEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuexiaojianjieVO;
import com.entity.view.XuexiaojianjieView;


/**
 * 学校简介
 * 
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface XuexiaojianjieDao extends BaseMapper<XuexiaojianjieEntity> {
	
	List<XuexiaojianjieVO> selectListVO(@Param("ew") Wrapper<XuexiaojianjieEntity> wrapper);
	
	XuexiaojianjieVO selectVO(@Param("ew") Wrapper<XuexiaojianjieEntity> wrapper);
	
	List<XuexiaojianjieView> selectListView(@Param("ew") Wrapper<XuexiaojianjieEntity> wrapper);

	List<XuexiaojianjieView> selectListView(Pagination page,@Param("ew") Wrapper<XuexiaojianjieEntity> wrapper);
	
	XuexiaojianjieView selectView(@Param("ew") Wrapper<XuexiaojianjieEntity> wrapper);
	
}
