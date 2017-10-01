package cn.service.Invitation;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dao.Invitation.InvitationMapper;
import cn.pojo.Invitation;

@Service
public class InvitationServiceImpl implements InvitationService {
	@Resource
	InvitationMapper invita;

	@Override
	public int getInvitationCount() {

		return invita.getInvitationCount();
	}

	@Override
	public List<Invitation> getInvitationList(Integer totalPageCount, Integer pageSize) {
		return invita.getInvitationList((totalPageCount-1)*pageSize, pageSize);
	}
}
