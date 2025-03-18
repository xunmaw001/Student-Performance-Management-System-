package com.entity.view;

import com.entity.ZaixiandayiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 在线答疑
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
@TableName("zaixiandayi")
public class ZaixiandayiView  extends ZaixiandayiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZaixiandayiView(){
	}
 
 	public ZaixiandayiView(ZaixiandayiEntity zaixiandayiEntity){
 	try {
			BeanUtils.copyProperties(this, zaixiandayiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
