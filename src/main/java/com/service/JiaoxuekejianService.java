package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiaoxuekejianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiaoxuekejianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiaoxuekejianView;


/**
 * 教学课件
 *
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface JiaoxuekejianService extends IService<JiaoxuekejianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiaoxuekejianVO> selectListVO(Wrapper<JiaoxuekejianEntity> wrapper);
   	
   	JiaoxuekejianVO selectVO(@Param("ew") Wrapper<JiaoxuekejianEntity> wrapper);
   	
   	List<JiaoxuekejianView> selectListView(Wrapper<JiaoxuekejianEntity> wrapper);
   	
   	JiaoxuekejianView selectView(@Param("ew") Wrapper<JiaoxuekejianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiaoxuekejianEntity> wrapper);
   	
}

