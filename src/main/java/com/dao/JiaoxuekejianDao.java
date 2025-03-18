package com.dao;

import com.entity.JiaoxuekejianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiaoxuekejianVO;
import com.entity.view.JiaoxuekejianView;


/**
 * 教学课件
 * 
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface JiaoxuekejianDao extends BaseMapper<JiaoxuekejianEntity> {
	
	List<JiaoxuekejianVO> selectListVO(@Param("ew") Wrapper<JiaoxuekejianEntity> wrapper);
	
	JiaoxuekejianVO selectVO(@Param("ew") Wrapper<JiaoxuekejianEntity> wrapper);
	
	List<JiaoxuekejianView> selectListView(@Param("ew") Wrapper<JiaoxuekejianEntity> wrapper);

	List<JiaoxuekejianView> selectListView(Pagination page,@Param("ew") Wrapper<JiaoxuekejianEntity> wrapper);
	
	JiaoxuekejianView selectView(@Param("ew") Wrapper<JiaoxuekejianEntity> wrapper);
	
}
