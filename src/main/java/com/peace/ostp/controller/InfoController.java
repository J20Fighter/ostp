package com.peace.ostp.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.peace.ostp.domain.BasicInfo;
import com.peace.ostp.service.IBasicInfo;

@Controller
public class InfoController {

	public static final String SUCCESS_MESSAGE = "success";
	public static final String ERROR_MESSAGE = "failed";
	
	@Autowired
	private IBasicInfo infoService;
	
    @InitBinder  
    public void initBinder(WebDataBinder binder) {  
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
        dateFormat.setLenient(false);  
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));  
    }  
	
	@RequestMapping("/info_add")
	public String addInfo(BasicInfo basicInfo) {
		basicInfo.setInfoId(String.valueOf(Math.random()));//随进生产咨询ID
		infoService.addInfo(basicInfo);
		return "admin/Sports/zixun/Zixun";
	}
	
}
