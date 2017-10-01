package cn.service.ReplyDetail;

import java.util.List;


import cn.pojo.ReplyDetail;

public interface ReplyDetailService {
	public  List<ReplyDetail> getReplyDetailList(Integer totalPageCount,Integer pageSize,Integer id);

	public  int getReplyDetailCount(Integer id);
	
	public boolean addReplyDetail(ReplyDetail replyDetail);
}
