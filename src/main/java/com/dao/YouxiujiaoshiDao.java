package com.dao;

import com.entity.YouxiujiaoshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YouxiujiaoshiVO;
import com.entity.view.YouxiujiaoshiView;


/**
 * 优秀教师
 * 
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface YouxiujiaoshiDao extends BaseMapper<YouxiujiaoshiEntity> {
	
	List<YouxiujiaoshiVO> selectListVO(@Param("ew") Wrapper<YouxiujiaoshiEntity> wrapper);
	
	YouxiujiaoshiVO selectVO(@Param("ew") Wrapper<YouxiujiaoshiEntity> wrapper);
	
	List<YouxiujiaoshiView> selectListView(@Param("ew") Wrapper<YouxiujiaoshiEntity> wrapper);

	List<YouxiujiaoshiView> selectListView(Pagination page,@Param("ew") Wrapper<YouxiujiaoshiEntity> wrapper);
	
	YouxiujiaoshiView selectView(@Param("ew") Wrapper<YouxiujiaoshiEntity> wrapper);
	
}
