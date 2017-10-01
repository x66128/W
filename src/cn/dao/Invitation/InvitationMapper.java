package cn.dao.Invitation;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.pojo.Invitation;

public interface InvitationMapper {
	List<Invitation> getInvitationList(@Param("totalPageCount") Integer totalPageCount, @Param("pageSize") Integer pageSize);

	int getInvitationCount();
}
