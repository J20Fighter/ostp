package com.peace.ostp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.peace.ostp.domain.Message;
import com.peace.ostp.domain.User;
import com.peace.ostp.service.IUser;
import com.peace.ostp.util.Page;
import com.peace.ostp.util.PagingUtil;
import com.peace.ostp.util.StandardPasswordEncoderForSha1;


@Controller
public class UserController {

	public static final String SUCCESS_MESSAGE = "success";
	public static final String ERROR_MESSAGE = "failed";
	
	@Autowired
	private IUser userService;
	
	@RequestMapping(value = { "/issuser-login-page" }, method = RequestMethod.GET)
	public String issloginPage(Model model, @RequestParam(value = "result", required = false, defaultValue = "") String result) {
		if ("failed".equals(result)) {
			model.addAttribute("result", "无效的用户名或者密码");
		}
		return "isslogin";
	}
	
	/**
	 * 管理员信息界面
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/admin/apply-list", method = RequestMethod.GET)
	private String adminApplyPage(Model model, HttpServletRequest request) {
		return "admin/Sports/index";
	}
	
	/**
	 * 用户信息界面
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/admin/user-list", method = RequestMethod.GET)
	private String showUserListPage(Model model, HttpServletRequest request) {
		int index = 1;
		if (request.getParameter("page") != null)
			index = Integer.parseInt(request.getParameter("page"));
		Page<User> page = new Page<User>();
		page.setPageNo(index);
		page.setPageSize(20);
		List<User> userList = userService.getAllUserList(page);
		String pageStr = PagingUtil.getPagelink(index, page.getTotalPage(), "", "admin/user-list");
		model.addAttribute("userList", userList);
		model.addAttribute("pageStr", pageStr);
		return "admin/user-list";
	}
	
	@RequestMapping(value = "/admin/user-list/{username}", method = RequestMethod.GET)
	private String searchUserListPage(Model model, HttpServletRequest request,@PathVariable String username) {
		int index = 1;
		if (request.getParameter("page") != null)
			index = Integer.parseInt(request.getParameter("page"));
		Page<User> page = new Page<User>();
		page.setPageNo(index);
		page.setPageSize(20);
		List<User> userList = userService.getSearchUserList(page,username);
		String pageStr = PagingUtil.getPagelink(index, page.getTotalPage(), "", "admin/user-list");
		model.addAttribute("userList", userList);
		model.addAttribute("pageStr", pageStr);
		return "admin/user-list";
	}
	/**
	 * 添加用户界面
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/admin/add-user", method = RequestMethod.GET)
	private String addUserPage(Model model, HttpServletRequest request) {
		return "admin/add-user";
	}
	/**
	 * 添加用户
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = { "/admin/add-user" }, method = RequestMethod.POST)
	public @ResponseBody Message addUser(@RequestBody User user) {
		String password = user.getUserpsw() + "{" + user.getUsername() + "}";
		PasswordEncoder passwordEncoder = new StandardPasswordEncoderForSha1();
		String resultPassword = passwordEncoder.encode(password);
		user.setUserpsw(resultPassword);
		user.setEnabled("1");
		Message message = new Message();
		try {
			userService.addUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block

			if (e.getMessage().equals("duplicate-username")) {
				message.setResult(e.getMessage());
				message.setMessageInfo("用户名：" + user.getUsername() + "已经存在");
			} else
				message.setResult("错误！" + e.getClass().getName());
			e.printStackTrace();
		}
		//System.out.println(message.);
		return message;
	}
	/**
	 *编辑用户界面
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/admin/edit-user/{userId}", method = RequestMethod.GET)
	private String editUserPage(Model model, HttpServletRequest request,@PathVariable Integer userId) {
		User user = new User();
		user = userService.getUserById(userId);
		model.addAttribute("user",user);
		return "admin/edit-user";
	}
	/**
	 * 编辑用户
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = { "/admin/edit-user" }, method = RequestMethod.POST)
	public @ResponseBody Message editUser(@RequestBody User user) {
		String password = user.getUserpsw() + "{" + user.getUsername() + "}";
		PasswordEncoder passwordEncoder = new StandardPasswordEncoderForSha1();
		String resultPassword = passwordEncoder.encode(password);
		user.setUserpsw(resultPassword);
		user.setUserid(user.getUserid());
		user.setUsername(user.getUsername());
		user.setEnabled("1");
		Message message = new Message();
		try {
			userService.editUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block

			if (e.getMessage().equals("duplicate-username")) {
				message.setResult(e.getMessage());
				message.setMessageInfo("用户名：" + user.getUsername() + "已经存在");
			} else
				message.setResult("错误！" + e.getClass().getName());
			e.printStackTrace();
		}
		return message;
	}
	
	/**
	 * 禁用用户
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/admin/disable-user/{userId}", method = RequestMethod.GET)
	public @ResponseBody Message disableUser(Model model, HttpServletRequest request, @PathVariable String userId) {
		Message message = new Message();
		try {
			User user = new User();
			user.setUserid(userId);
			user.setEnabled("0");
			userService.updateUser(user, null);
		} catch (Exception e) {
			e.printStackTrace();
			message.setResult(e.getClass().getName());
		}

		return message;
	}
	/**
	 * 启用用户
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/admin/enable-user/{userId}", method = RequestMethod.GET)
	public @ResponseBody Message enableUser(Model model, HttpServletRequest request, @PathVariable String userId) {

		Message message = new Message();
		try {
			User user = new User();
			user.setUserid(userId);
			user.setEnabled("1");
			userService.updateUser(user, null);
		} catch (Exception e) {
			e.printStackTrace();
			message.setResult(e.getClass().getName());
		}
		return message;
	}
}
