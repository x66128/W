package cn.service.WebUser;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import cn.dao.WebUser.WebUserMapper;
import cn.pojo.WebUser;

@Service
public class WebUserServiceImpl implements WebUserService {
	@Resource
	WebUserMapper webuser;
	private static Logger log=Logger.getLogger(WebUserServiceImpl.class);
	@Override
	public WebUser getWebUser(String user, String password) {
		WebUser web = null;
		try {
			web=webuser.getWebUser(user);
			if(web!=null) {
				if(!web.getPassword().equals(password)) {
					web = null;
				}
			}			
		} catch (Exception e) {	
			e.printStackTrace();
		}
		return web;
	}

}
