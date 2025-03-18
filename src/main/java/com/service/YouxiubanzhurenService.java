package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YouxiubanzhurenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YouxiubanzhurenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YouxiubanzhurenView;


/**
 * 优秀班主任
 *
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface YouxiubanzhurenService extends IService<YouxiubanzhurenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YouxiubanzhurenVO> selectListVO(Wrapper<YouxiubanzhurenEntity> wrapper);
   	
   	YouxiubanzhurenVO selectVO(@Param("ew") Wrapper<YouxiubanzhurenEntity> wrapper);
   	
   	List<YouxiubanzhurenView> selectListView(Wrapper<YouxiubanzhurenEntity> wrapper);
   	
   	YouxiubanzhurenView selectView(@Param("ew") Wrapper<YouxiubanzhurenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YouxiubanzhurenEntity> wrapper);
   	
}

