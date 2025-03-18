package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BanjichengjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BanjichengjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BanjichengjiView;


/**
 * 班级成绩
 *
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface BanjichengjiService extends IService<BanjichengjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BanjichengjiVO> selectListVO(Wrapper<BanjichengjiEntity> wrapper);
   	
   	BanjichengjiVO selectVO(@Param("ew") Wrapper<BanjichengjiEntity> wrapper);
   	
   	List<BanjichengjiView> selectListView(Wrapper<BanjichengjiEntity> wrapper);
   	
   	BanjichengjiView selectView(@Param("ew") Wrapper<BanjichengjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BanjichengjiEntity> wrapper);
   	
}

