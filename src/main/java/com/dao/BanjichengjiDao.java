package com.dao;

import com.entity.BanjichengjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BanjichengjiVO;
import com.entity.view.BanjichengjiView;


/**
 * 班级成绩
 * 
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public interface BanjichengjiDao extends BaseMapper<BanjichengjiEntity> {
	
	List<BanjichengjiVO> selectListVO(@Param("ew") Wrapper<BanjichengjiEntity> wrapper);
	
	BanjichengjiVO selectVO(@Param("ew") Wrapper<BanjichengjiEntity> wrapper);
	
	List<BanjichengjiView> selectListView(@Param("ew") Wrapper<BanjichengjiEntity> wrapper);

	List<BanjichengjiView> selectListView(Pagination page,@Param("ew") Wrapper<BanjichengjiEntity> wrapper);
	
	BanjichengjiView selectView(@Param("ew") Wrapper<BanjichengjiEntity> wrapper);
	
}
