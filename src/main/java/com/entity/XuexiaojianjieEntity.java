package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 学校简介
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
@TableName("xuexiaojianjie")
public class XuexiaojianjieEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XuexiaojianjieEntity() {
		
	}
	
	public XuexiaojianjieEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 学校名称
	 */
					
	private String xuexiaomingcheng;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：学校名称
	 */
	public void setXuexiaomingcheng(String xuexiaomingcheng) {
		this.xuexiaomingcheng = xuexiaomingcheng;
	}
	/**
	 * 获取：学校名称
	 */
	public String getXuexiaomingcheng() {
		return xuexiaomingcheng;
	}
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
