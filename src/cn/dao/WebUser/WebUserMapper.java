package cn.dao.WebUser;

import org.apache.ibatis.annotations.Param;

import cn.pojo.WebUser;

public interface WebUserMapper {
	WebUser getWebUser(@Param("user") String user);
	
	
}	
