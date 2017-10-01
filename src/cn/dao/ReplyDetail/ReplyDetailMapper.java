package cn.dao.ReplyDetail;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.pojo.ReplyDetail;


public interface ReplyDetailMapper {
	List<ReplyDetail> getReplyDetailList(@Param("totalPageCount") Integer totalPageCount, 
			@Param("pageSize") Integer pageSize,@Param("uid")Integer uid);

	int getReplyDetailCount(@Param("uid")Integer uid);
	
	int addReplyDetail(ReplyDetail reply);
}
