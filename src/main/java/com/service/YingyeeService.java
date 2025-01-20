package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YingyeeEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YingyeeVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YingyeeView;


/**
 * 营业额
 *
 * @author 
 * @email 
 * @date 2022-04-12 15:53:54
 */
public interface YingyeeService extends IService<YingyeeEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YingyeeVO> selectListVO(Wrapper<YingyeeEntity> wrapper);
   	
   	YingyeeVO selectVO(@Param("ew") Wrapper<YingyeeEntity> wrapper);
   	
   	List<YingyeeView> selectListView(Wrapper<YingyeeEntity> wrapper);
   	
   	YingyeeView selectView(@Param("ew") Wrapper<YingyeeEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YingyeeEntity> wrapper);
   	

}

