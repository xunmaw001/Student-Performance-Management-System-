package com.dao;

import com.entity.YouxiubanzhurenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YouxiubanzhurenVO;
import com.entity.view.YouxiubanzhurenView;


/**
 * 优秀班主任
 * 
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface YouxiubanzhurenDao extends BaseMapper<YouxiubanzhurenEntity> {
	
	List<YouxiubanzhurenVO> selectListVO(@Param("ew") Wrapper<YouxiubanzhurenEntity> wrapper);
	
	YouxiubanzhurenVO selectVO(@Param("ew") Wrapper<YouxiubanzhurenEntity> wrapper);
	
	List<YouxiubanzhurenView> selectListView(@Param("ew") Wrapper<YouxiubanzhurenEntity> wrapper);

	List<YouxiubanzhurenView> selectListView(Pagination page,@Param("ew") Wrapper<YouxiubanzhurenEntity> wrapper);
	
	YouxiubanzhurenView selectView(@Param("ew") Wrapper<YouxiubanzhurenEntity> wrapper);
	
}
