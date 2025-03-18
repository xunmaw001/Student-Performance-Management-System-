package com.entity.model;

import com.entity.XueshengchengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 学生成绩
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public class XueshengchengjiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 学生学号
	 */
	
	private String xueshengxuehao;
		
	/**
	 * 科目
	 */
	
	private String kemu;
		
	/**
	 * 成绩
	 */
	
	private String chengji;
		
	/**
	 * 班排名
	 */
	
	private Integer banpaiming;
		
	/**
	 * 级排名
	 */
	
	private Integer jipaiming;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
				
	
	/**
	 * 设置：学生学号
	 */
	 
	public void setXueshengxuehao(String xueshengxuehao) {
		this.xueshengxuehao = xueshengxuehao;
	}
	
	/**
	 * 获取：学生学号
	 */
	public String getXueshengxuehao() {
		return xueshengxuehao;
	}
				
	
	/**
	 * 设置：科目
	 */
	 
	public void setKemu(String kemu) {
		this.kemu = kemu;
	}
	
	/**
	 * 获取：科目
	 */
	public String getKemu() {
		return kemu;
	}
				
	
	/**
	 * 设置：成绩
	 */
	 
	public void setChengji(String chengji) {
		this.chengji = chengji;
	}
	
	/**
	 * 获取：成绩
	 */
	public String getChengji() {
		return chengji;
	}
				
	
	/**
	 * 设置：班排名
	 */
	 
	public void setBanpaiming(Integer banpaiming) {
		this.banpaiming = banpaiming;
	}
	
	/**
	 * 获取：班排名
	 */
	public Integer getBanpaiming() {
		return banpaiming;
	}
				
	
	/**
	 * 设置：级排名
	 */
	 
	public void setJipaiming(Integer jipaiming) {
		this.jipaiming = jipaiming;
	}
	
	/**
	 * 获取：级排名
	 */
	public Integer getJipaiming() {
		return jipaiming;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
			
}
