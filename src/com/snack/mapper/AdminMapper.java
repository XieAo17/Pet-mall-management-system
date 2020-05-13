package com.snack.mapper;

import com.snack.model.Admin;
import com.snack.model.AdminExample;
import com.snack.model.domain.DoAdmin;
import com.snack.model.domain.DoAdminInfo;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
	//按条件计数
    int countByExample(AdminExample example);
//按条件查询
    int deleteByExample(AdminExample example);
//按主键删除
    int deleteByPrimaryKey(Integer adId);
//插入数据（返回值为id）
    int insert(Admin record);
//插入数据（只给有值的字段赋值，会对传进来的值做非空判断）
    int insertSelective(Admin record);
//按条件查询（复杂查询）
    List<Admin> selectByExample(AdminExample example);
//按主键查询
    Admin selectByPrimaryKey(Integer adId);
//按条件更新值，不为null的字段（更新一条数据中的某些属性，而不是更新整条数据）
    int updateByExampleSelective(@Param("record") Admin record, @Param("example") AdminExample example);
//按条件更新（需要将表的条件全部给出）
    int updateByExample(@Param("record") Admin record, @Param("example") AdminExample example);
//按主键更新值不为null的字段（会对字段进行判断再更新(如果为Null就忽略更新)，如果你只想更新某一字段，可以用这个方法）
    int updateByPrimaryKeySelective(Admin record);
//按主键更新（注入字段全部更新）
    int updateByPrimaryKey(Admin record);
    
    List<Admin> selectAdminLimit(Map<Object,Object> map);
     
    int countAdminLimit(Map<Object,Object> map);
    
    DoAdmin selectAdminByOne(int adId);
    
    int updateAdminInfo(DoAdminInfo doadminInfo);
}