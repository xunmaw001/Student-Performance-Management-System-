package com.entity.vo;

import com.entity.XuexiaojianjieEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 学校简介
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public class XuexiaojianjieVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 校园风采
	 */
	
	private String xiaoyuanfengcai;
		
	/**
	 * 校园简介
	 */
	
	private String xiaoyuanjianjie;
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：校园风采
	 */
	 
	public void setXiaoyuanfengcai(String xiaoyuanfengcai) {
		this.xiaoyuanfengcai = xiaoyuanfengcai;
	}
	
	/**
	 * 获取：校园风采
	 */
	public String getXiaoyuanfengcai() {
		return xiaoyuanfengcai;
	}
				
	
	/**
	 * 设置：校园简介
	 */
	 
	public void setXiaoyuanjianjie(String xiaoyuanjianjie) {
		this.xiaoyuanjianjie = xiaoyuanjianjie;
	}
	
	/**
	 * 获取：校园简介
	 */
	public String getXiaoyuanjianjie() {
		return xiaoyuanjianjie;
	}
			
}
