package cn.service.Invitation;

import java.util.List;

import cn.pojo.Invitation;

public interface InvitationService {
	public int getInvitationCount();
	public List<Invitation> getInvitationList(Integer totalPageCount, Integer pageSize);
}
