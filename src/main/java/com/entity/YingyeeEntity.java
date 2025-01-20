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
 * 营业额
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-04-12 15:53:54
 */
@TableName("yingyee")
public class YingyeeEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YingyeeEntity() {
		
	}
	
	public YingyeeEntity(T t) {
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
	 * 统计编号
	 */
					
	private String tongjibianhao;
	
	/**
	 * 进货金额
	 */
					
	private Integer jinhuojine;
	
	/**
	 * 售卖金额
	 */
					
	private Integer shoumaijine;
	
	/**
	 * 毛利润
	 */
					
	private Integer maolirun;
	
	/**
	 * 登记日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date dengjiriqi;
	
	/**
	 * 门店账号
	 */
					
	private String mendianzhanghao;
	
	/**
	 * 门店名称
	 */
					
	private String mendianmingcheng;
	
	
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
	 * 设置：统计编号
	 */
	public void setTongjibianhao(String tongjibianhao) {
		this.tongjibianhao = tongjibianhao;
	}
	/**
	 * 获取：统计编号
	 */
	public String getTongjibianhao() {
		return tongjibianhao;
	}
	/**
	 * 设置：进货金额
	 */
	public void setJinhuojine(Integer jinhuojine) {
		this.jinhuojine = jinhuojine;
	}
	/**
	 * 获取：进货金额
	 */
	public Integer getJinhuojine() {
		return jinhuojine;
	}
	/**
	 * 设置：售卖金额
	 */
	public void setShoumaijine(Integer shoumaijine) {
		this.shoumaijine = shoumaijine;
	}
	/**
	 * 获取：售卖金额
	 */
	public Integer getShoumaijine() {
		return shoumaijine;
	}
	/**
	 * 设置：毛利润
	 */
	public void setMaolirun(Integer maolirun) {
		this.maolirun = maolirun;
	}
	/**
	 * 获取：毛利润
	 */
	public Integer getMaolirun() {
		return maolirun;
	}
	/**
	 * 设置：登记日期
	 */
	public void setDengjiriqi(Date dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	/**
	 * 获取：登记日期
	 */
	public Date getDengjiriqi() {
		return dengjiriqi;
	}
	/**
	 * 设置：门店账号
	 */
	public void setMendianzhanghao(String mendianzhanghao) {
		this.mendianzhanghao = mendianzhanghao;
	}
	/**
	 * 获取：门店账号
	 */
	public String getMendianzhanghao() {
		return mendianzhanghao;
	}
	/**
	 * 设置：门店名称
	 */
	public void setMendianmingcheng(String mendianmingcheng) {
		this.mendianmingcheng = mendianmingcheng;
	}
	/**
	 * 获取：门店名称
	 */
	public String getMendianmingcheng() {
		return mendianmingcheng;
	}

}
