package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YouxiuxueshengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YouxiuxueshengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YouxiuxueshengView;


/**
 * 优秀学生
 *
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface YouxiuxueshengService extends IService<YouxiuxueshengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YouxiuxueshengVO> selectListVO(Wrapper<YouxiuxueshengEntity> wrapper);
   	
   	YouxiuxueshengVO selectVO(@Param("ew") Wrapper<YouxiuxueshengEntity> wrapper);
   	
   	List<YouxiuxueshengView> selectListView(Wrapper<YouxiuxueshengEntity> wrapper);
   	
   	YouxiuxueshengView selectView(@Param("ew") Wrapper<YouxiuxueshengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YouxiuxueshengEntity> wrapper);
   	
}

