package com.entity.view;

import com.entity.YingyeeEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 营业额
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-12 15:53:54
 */
@TableName("yingyee")
public class YingyeeView  extends YingyeeEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YingyeeView(){
	}
 
 	public YingyeeView(YingyeeEntity yingyeeEntity){
 	try {
			BeanUtils.copyProperties(this, yingyeeEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
