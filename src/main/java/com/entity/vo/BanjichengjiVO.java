package com.entity.vo;

import com.entity.BanjichengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 班级成绩
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2020-12-17 13:02:56
 */
public class BanjichengjiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 年级
	 */
	
	private String nianji;
		
	/**
	 * 班级
	 */
	
	private String banji;
		
	/**
	 * 科目
	 */
	
	private String kemu;
		
	/**
	 * 总成绩
	 */
	
	private String zongchengji;
		
	/**
	 * 平均分
	 */
	
	private String pingjunfen;
		
	/**
	 * 成绩表
	 */
	
	private String chengjibiao;
		
	/**
	 * 教师工号
	 */
	
	private String jiaoshigonghao;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
				
	
	/**
	 * 设置：年级
	 */
	 
	public void setNianji(String nianji) {
		this.nianji = nianji;
	}
	
	/**
	 * 获取：年级
	 */
	public String getNianji() {
		return nianji;
	}
				
	
	/**
	 * 设置：班级
	 */
	 
	public void setBanji(String banji) {
		this.banji = banji;
	}
	
	/**
	 * 获取：班级
	 */
	public String getBanji() {
		return banji;
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
	 * 设置：总成绩
	 */
	 
	public void setZongchengji(String zongchengji) {
		this.zongchengji = zongchengji;
	}
	
	/**
	 * 获取：总成绩
	 */
	public String getZongchengji() {
		return zongchengji;
	}
				
	
	/**
	 * 设置：平均分
	 */
	 
	public void setPingjunfen(String pingjunfen) {
		this.pingjunfen = pingjunfen;
	}
	
	/**
	 * 获取：平均分
	 */
	public String getPingjunfen() {
		return pingjunfen;
	}
				
	
	/**
	 * 设置：成绩表
	 */
	 
	public void setChengjibiao(String chengjibiao) {
		this.chengjibiao = chengjibiao;
	}
	
	/**
	 * 获取：成绩表
	 */
	public String getChengjibiao() {
		return chengjibiao;
	}
				
	
	/**
	 * 设置：教师工号
	 */
	 
	public void setJiaoshigonghao(String jiaoshigonghao) {
		this.jiaoshigonghao = jiaoshigonghao;
	}
	
	/**
	 * 获取：教师工号
	 */
	public String getJiaoshigonghao() {
		return jiaoshigonghao;
	}
				
	
	/**
	 * 设置：登记时间
	 */
	 
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}
			
}
