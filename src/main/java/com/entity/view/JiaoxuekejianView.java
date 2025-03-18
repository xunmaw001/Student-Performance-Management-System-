package com.entity.view;

import com.entity.JiaoxuekejianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 教学课件
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
@TableName("jiaoxuekejian")
public class JiaoxuekejianView  extends JiaoxuekejianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiaoxuekejianView(){
	}
 
 	public JiaoxuekejianView(JiaoxuekejianEntity jiaoxuekejianEntity){
 	try {
			BeanUtils.copyProperties(this, jiaoxuekejianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
