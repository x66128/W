package cn.service.ReplyDetail;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dao.ReplyDetail.ReplyDetailMapper;
import cn.pojo.ReplyDetail;

@Service
public class ReplyDetailServiceImpl implements ReplyDetailService {
	@Resource
	ReplyDetailMapper Detail;

	@Override
	public List<ReplyDetail> getReplyDetailList(Integer totalPageCount, Integer pageSize, Integer id) {
		return Detail.getReplyDetailList((totalPageCount - 1) * pageSize, pageSize, id);

	}

	@Override
	public int getReplyDetailCount(Integer id) {
		return Detail.getReplyDetailCount(id);
	}

	@Override
	public boolean addReplyDetail(ReplyDetail replyDetail) {
		return Detail.addReplyDetail(replyDetail)>0;
	}

}
