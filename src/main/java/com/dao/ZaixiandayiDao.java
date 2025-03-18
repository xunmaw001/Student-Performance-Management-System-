package com.dao;

import com.entity.ZaixiandayiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZaixiandayiVO;
import com.entity.view.ZaixiandayiView;


/**
 * 在线答疑
 * 
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface ZaixiandayiDao extends BaseMapper<ZaixiandayiEntity> {
	
	List<ZaixiandayiVO> selectListVO(@Param("ew") Wrapper<ZaixiandayiEntity> wrapper);
	
	ZaixiandayiVO selectVO(@Param("ew") Wrapper<ZaixiandayiEntity> wrapper);
	
	List<ZaixiandayiView> selectListView(@Param("ew") Wrapper<ZaixiandayiEntity> wrapper);

	List<ZaixiandayiView> selectListView(Pagination page,@Param("ew") Wrapper<ZaixiandayiEntity> wrapper);
	
	ZaixiandayiView selectView(@Param("ew") Wrapper<ZaixiandayiEntity> wrapper);
	
}
