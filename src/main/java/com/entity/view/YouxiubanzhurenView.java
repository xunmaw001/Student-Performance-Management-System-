package com.entity.view;

import com.entity.YouxiubanzhurenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 优秀班主任
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
@TableName("youxiubanzhuren")
public class YouxiubanzhurenView  extends YouxiubanzhurenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YouxiubanzhurenView(){
	}
 
 	public YouxiubanzhurenView(YouxiubanzhurenEntity youxiubanzhurenEntity){
 	try {
			BeanUtils.copyProperties(this, youxiubanzhurenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
