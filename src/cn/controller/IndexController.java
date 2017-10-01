package cn.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.pojo.WebUser;
import cn.service.WebUser.WebUserService;

@Controller
@RequestMapping(value = "/un")
public class IndexController {
	private static Logger log = Logger.getLogger(IndexController.class);
	@Resource
	WebUserService web;

	@RequestMapping(value = "/long1", method = RequestMethod.POST)
	public String long1(@RequestParam String user, @RequestParam String password, HttpSession session,
			HttpServletRequest request) {
		log.info(user + ">>>>>>>>>>>" + password);
		WebUser webuser = web.getWebUser(user, password);
		if (webuser != null) {
			session.setAttribute("webuser", webuser.getUser());
			return "redirect:/mdao";
		} else {
			request.setAttribute("error", "用户名，或者密码不正确");
			return "index";
		}
	}

}
