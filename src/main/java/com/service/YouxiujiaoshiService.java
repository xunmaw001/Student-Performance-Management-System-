package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YouxiujiaoshiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YouxiujiaoshiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YouxiujiaoshiView;


/**
 * 优秀教师
 *
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface YouxiujiaoshiService extends IService<YouxiujiaoshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YouxiujiaoshiVO> selectListVO(Wrapper<YouxiujiaoshiEntity> wrapper);
   	
   	YouxiujiaoshiVO selectVO(@Param("ew") Wrapper<YouxiujiaoshiEntity> wrapper);
   	
   	List<YouxiujiaoshiView> selectListView(Wrapper<YouxiujiaoshiEntity> wrapper);
   	
   	YouxiujiaoshiView selectView(@Param("ew") Wrapper<YouxiujiaoshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YouxiujiaoshiEntity> wrapper);
   	
}

