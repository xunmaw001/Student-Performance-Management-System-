package com.dao;

import com.entity.YouxiuxueshengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YouxiuxueshengVO;
import com.entity.view.YouxiuxueshengView;


/**
 * 优秀学生
 * 
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface YouxiuxueshengDao extends BaseMapper<YouxiuxueshengEntity> {
	
	List<YouxiuxueshengVO> selectListVO(@Param("ew") Wrapper<YouxiuxueshengEntity> wrapper);
	
	YouxiuxueshengVO selectVO(@Param("ew") Wrapper<YouxiuxueshengEntity> wrapper);
	
	List<YouxiuxueshengView> selectListView(@Param("ew") Wrapper<YouxiuxueshengEntity> wrapper);

	List<YouxiuxueshengView> selectListView(Pagination page,@Param("ew") Wrapper<YouxiuxueshengEntity> wrapper);
	
	YouxiuxueshengView selectView(@Param("ew") Wrapper<YouxiuxueshengEntity> wrapper);
	
}
