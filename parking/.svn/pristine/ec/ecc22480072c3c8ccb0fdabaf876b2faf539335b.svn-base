package com.parking.interceptor;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.parking.entity.Users;

/**
 * 授权拦截器
 * 
 * @author LHF
 */
@SuppressWarnings("serial")
public class AuthrizationInterceptor extends AbstractInterceptor {
	@Override
	public String intercept(ActionInvocation invoke) throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		Users user = (Users) session.getAttribute("user");
		String actionName = invoke.getProxy().getActionName();
		if (user == null) {
			if ("login".equals(actionName) || "accept".equals(actionName)
					|| "toRegister".equals(actionName)
					|| "toLogin".equals(actionName)
					|| "register".equals(actionName)
					||"toGetIn".equals(actionName)) {
				return invoke.invoke();
			} else {
				return "login";
			}
		} else {
			return invoke.invoke();
		}
	}

}
