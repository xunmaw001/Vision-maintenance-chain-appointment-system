package com.entity.model;

import com.entity.YingyeeEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 营业额
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-12 15:53:54
 */
public class YingyeeModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
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
