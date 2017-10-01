package cn.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import cn.pojo.Invitation;
import cn.pojo.ReplyDetail;
import cn.service.Invitation.InvitationService;
import cn.service.ReplyDetail.ReplyDetailService;
import cn.service.WebUser.WebUserService;
import cn.tools.PageSupport;

@Controller
public class mindaoController {
	private static Logger log = Logger.getLogger(IndexController.class);
	@Resource
	InvitationService itatio;
	@Resource
	ReplyDetailService rdeta;

	@RequestMapping(value = "mdao")
	public String mdao(Model model, @RequestParam(value = "currentPageNo", required = false) String currentPageNo) {

		List<Invitation> InvitationList = null;
		// 设置页面容量
		int pageSize = 5;
		// 当前页码
		int PageNo = 1;
		if (currentPageNo == null || currentPageNo.equals("")) {
			PageNo = 1;
		} else {
			PageNo = Integer.parseInt(currentPageNo);
		}

		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + PageNo);
		// 总数量（表）
		int totalCount = itatio.getInvitationCount();

		// 总页数
		PageSupport pages = new PageSupport();
		pages.setCurrentPageNo(PageNo);
		pages.setPageSize(pageSize);
		pages.setTotalCount(totalCount);
		int totalPageCount = pages.getTotalPageCount();
		// 控制首页和尾页
		if (PageNo < 1) {
			PageNo = 1;
		} else if (PageNo > totalPageCount) {
			PageNo = totalPageCount;
		}

		InvitationList = itatio.getInvitationList(PageNo, pageSize);

		model.addAttribute("InvitationList", InvitationList);
		model.addAttribute("currentPageNo", PageNo);
		model.addAttribute("totalPageCount", totalPageCount);
		return "mindao";
	}

	@RequestMapping(value = "/tui")
	public String tui(HttpSession session) {
		session.removeAttribute("webuser");
		return "index";
	}

	@RequestMapping(value = "/huifu")
	public String huifu(HttpSession session, Model model,
			@RequestParam(value = "currentPageNo", required = false) String currentPageNo,
			@RequestParam(value = "uid", required = false) String uid) {
		log.info(uid);
		session.setAttribute("huiid", uid);
		List<ReplyDetail> ReplyDetailList = null;
		// 设置页面容量
		int pageSize = 5;
		// 当前页码
		int PageNo = 1;
		if (currentPageNo == null || currentPageNo.equals("")) {
			PageNo = 1;
		} else {
			PageNo = Integer.parseInt(currentPageNo);
		}

		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + PageNo);
		// 总数量（表）
		int totalCount = rdeta.getReplyDetailCount(Integer.parseInt(uid));

		// 总页数
		PageSupport pages = new PageSupport();
		pages.setCurrentPageNo(PageNo);
		pages.setPageSize(pageSize);
		pages.setTotalCount(totalCount);
		int totalPageCount = pages.getTotalPageCount();
		// 控制首页和尾页
		if (PageNo < 1) {
			PageNo = 1;
		} else if (PageNo > totalPageCount) {
			PageNo = totalPageCount;
		}

		ReplyDetailList = rdeta.getReplyDetailList(PageNo, pageSize, Integer.parseInt(uid));

		model.addAttribute("ReplyDetailList", ReplyDetailList);
		model.addAttribute("currentPageNo", PageNo);
		model.addAttribute("totalPageCount", totalPageCount);
		return "new_file";

	}

	@RequestMapping(value = "/addmao")
	public String addmao(Integer Invid, String content, String author) {
		ReplyDetail replyDetail = new ReplyDetail();
		log.info(">>>>>>>>>>>>>>>Invid>>>>>>>>>>>>>>" + Invid);
		log.info(">>>>>>>>>>>>>>>content>>>>>>>>>>>>>" + content);
		log.info(">>>>>>>>>>>>>>>>author>>>>>>>>>>>" + author);
		replyDetail.setInvid(Invid);
		replyDetail.setAuthor(author);
		replyDetail.setContent(content);

		if (rdeta.addReplyDetail(replyDetail)) {
			log.info(rdeta.addReplyDetail(replyDetail));
			return "redirect:/huifu?uid=" + Invid;
		} else {
			return "redirect:/yemian";
		}
	}

	@RequestMapping(value = "/yemian")
	public String yemian(HttpSession session) {
		return "add";
	}

}
