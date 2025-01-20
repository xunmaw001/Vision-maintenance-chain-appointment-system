package com.dao;

import com.entity.YingyeeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YingyeeVO;
import com.entity.view.YingyeeView;


/**
 * 营业额
 * 
 * @author 
 * @email 
 * @date 2022-04-12 15:53:54
 */
public interface YingyeeDao extends BaseMapper<YingyeeEntity> {
	
	List<YingyeeVO> selectListVO(@Param("ew") Wrapper<YingyeeEntity> wrapper);
	
	YingyeeVO selectVO(@Param("ew") Wrapper<YingyeeEntity> wrapper);
	
	List<YingyeeView> selectListView(@Param("ew") Wrapper<YingyeeEntity> wrapper);

	List<YingyeeView> selectListView(Pagination page,@Param("ew") Wrapper<YingyeeEntity> wrapper);
	
	YingyeeView selectView(@Param("ew") Wrapper<YingyeeEntity> wrapper);
	

}
