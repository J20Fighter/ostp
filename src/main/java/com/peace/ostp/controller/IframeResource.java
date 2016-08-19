package com.peace.ostp.controller;

import java.util.Iterator;
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
public class IframeResource {

	public static final String SUCCESS_MESSAGE = "success";
	public static final String ERROR_MESSAGE = "failed";

	/**
	 * 资源访问 welcome界面
	 */
	@RequestMapping(value = "/wc", method = RequestMethod.GET)
	public String wcGet(Model model, HttpServletRequest request) {
		return "admin/Sports/welcome";
	}

	/**
	 * 系统管理子页面
	 *  xitong_quanxian 权限
	 *  xitong_user 系统用户
	 *  xitong_juese 角色用户
	 *  xitong 系统列表
	 */
	@RequestMapping(value = "/xitong_quanxian", method = RequestMethod.GET)
	public String xitong_quanxianGet(Model model, HttpServletRequest request) {
		return "admin/Sports/xitong/xitong_quanxian";
	}

	@RequestMapping(value = "/xitong_user", method = RequestMethod.GET)
	public String xitong_userGet(Model model, HttpServletRequest request) {
		return "admin/Sports/xitong/xitong_user";
	}

	@RequestMapping(value = "/xitong_juese", method = RequestMethod.GET)
	public String xitong_jueseGet(Model model, HttpServletRequest request) {
		return "admin/Sports/xitong/xitong_juese";
	}
	@RequestMapping(value = "/xitong", method = RequestMethod.GET)
	public String xitongGet(Model model, HttpServletRequest request) {
		return "admin/Sports/xitong/xitong";
	}
	/**
	 * 基础数据管理
	 * basic_sport 户外运动
	 * basic_outdoor 户外运动类型
	 * basic_zhuangbei 装备功能类型
	 * basic_image 图像风格类型
	 * basic_weizhi 位置类型
	 * basic 基础数据列表
	 */
	@RequestMapping(value = "/basic_sport", method = RequestMethod.GET)
	public String basic_sportGet(Model model, HttpServletRequest request) {
		return "admin/Sports/basic/basic_sport";
	}
	@RequestMapping(value = "/basic_outdoor", method = RequestMethod.GET)
	public String basic_outdoorGet(Model model, HttpServletRequest request) {
		return "admin/Sports/basic/basic_outdoor";
	}
	@RequestMapping(value = "/basic_zhuangbei", method = RequestMethod.GET)
	public String basic_zhuangbeiGet(Model model, HttpServletRequest request) {
		return "admin/Sports/basic/basic_zhuangbei";
	}
	@RequestMapping(value = "/basic_image", method = RequestMethod.GET)
	public String basic_imageGet(Model model, HttpServletRequest request) {
		return "admin/Sports/basic/basic_image";
	}
	@RequestMapping(value = "/basic_weizhi", method = RequestMethod.GET)
	public String basic_weizhiGet(Model model, HttpServletRequest request) {
		return "admin/Sports/basic/basic_weizhi";
	}
	@RequestMapping(value = "/basic", method = RequestMethod.GET)
	public String basicGet(Model model, HttpServletRequest request) {
		return "admin/Sports/basic/basic";
	}
	
	/**
	 * 资讯类型
	 * Zixun_add 咨询添加
	 * Zixun_edit 咨询编辑
	 * Zixun_view 咨询详情
	 * Zixun 咨询列表
	 */
	@RequestMapping(value = "/zixun_add", method = RequestMethod.GET)
	public String Zixun_addGet(Model model, HttpServletRequest request) {
		return "admin/Sports/zixun/Zixun_add";
	}
	@RequestMapping(value = "/zixun_edit", method = RequestMethod.GET)
	public String Zixun_editGet(Model model, HttpServletRequest request) {
		return "admin/Sports/zixun/Zixun_edit";
	}
	@RequestMapping(value = "/zixun_view", method = RequestMethod.GET)
	public String Zixun_viewGet(Model model, HttpServletRequest request) {
		return "admin/Sports/zixun/Zixun_view";
	}
	@RequestMapping(value = "/zixun", method = RequestMethod.GET)
	public String ZixunGet(Model model, HttpServletRequest request) {
		return "admin/Sports/zixun/Zixun";
	}
	
	/**
	 * 装备管理
	 * zhuangbei_add  装备添加
	 * zhuangbei_edit 装备编辑
	 * zhuangbei_view 装备详情
	 * zhuangbei 装备列表
	 */
	@RequestMapping(value="/zhuangbei_add",method=RequestMethod.GET)
	public String zhuangbei_addGet(Model model,HttpServletRequest request){
		return "admin/Sports/zhuangbei/zhuangbei_add";
	}
	@RequestMapping(value="/zhuangbei_edit",method=RequestMethod.GET)
	public String zhuangbei_editGet(Model model,HttpServletRequest request){
		return "admin/Sports/zhuangbei/zhuangbei_edit";
	}
	@RequestMapping(value="/zhuangbei_view",method=RequestMethod.GET)
	public String zhuangbei_viewGet(Model model,HttpServletRequest request){
		return "admin/Sports/zhuangbei/zhuangbei_view";
	}
	@RequestMapping(value="/zhuangbei",method=RequestMethod.GET)
	public String zhuangbeiGet(Model model,HttpServletRequest request){
		return "admin/Sports/zhuangbei/zhuangbei";
	}
	/**
	 * 摄影管理
	 * sheying_add  添加摄影
	 * sheying_edit	编辑摄影
	 * sheying_view 摄影详情
	 * sheying	摄影列表
	 */
	@RequestMapping(value="/sheying_add",method=RequestMethod.GET)
	public String sheying_addGet(Model model,HttpServletRequest request){
		return "admin/Sports/sheying/sheying_add";
	}
	@RequestMapping(value="/sheying_edit",method=RequestMethod.GET)
	public String sheying_editGet(Model model,HttpServletRequest request){
		return "admin/Sports/sheying/sheying_edit";
	}
	@RequestMapping(value="/sheying_view",method=RequestMethod.GET)
	public String sheying_viewGet(Model model,HttpServletRequest request){
		return "admin/Sports/sheying/sheying_view";
	}
	@RequestMapping(value="/sheying",method=RequestMethod.GET)
	public String sheyingGet(Model model,HttpServletRequest request){
		return "admin/Sports/sheying/sheying";
	}
	/**
	 * 位置管理
	 * weizhi_add  位置添加
	 * weizhi_edit 位置编辑
	 * weizhi_view 位置详情
	 * weizhi	位置列表
	 */
	@RequestMapping(value="/weizhi_add",method=RequestMethod.GET)
	public String weizhi_addGet(Model model,HttpServletRequest request){
		return "admin/Sports/weizhi/weizhi_add";
	}
	@RequestMapping(value="/weizhi_edit",method=RequestMethod.GET)
	public String weizhi_editGet(Model model,HttpServletRequest request){
		return "admin/Sports/weizhi/weizhi_edit";
	}
	@RequestMapping(value="/weizhi_view",method=RequestMethod.GET)
	public String weizhi_viewGet(Model model,HttpServletRequest request){
		return "admin/Sports/weizhi/weizhi_view";
	}
	@RequestMapping(value="/weizhi",method=RequestMethod.GET)
	public String weizhiGet(Model model,HttpServletRequest request){
		return "admin/Sports/weizhi/weizhi";
	}
	/**
	 * 教程管理
	 * jiaocheng_add  教程添加 
	 * jiaocheng_edit 教程编辑
	 * jiaocheng_view 教程详情
	 * jiaocheng 教程列表
	 * 
	 */
	@RequestMapping(value="/jiaocheng_add",method=RequestMethod.GET)
	public String jiaocheng_addGet(Model model,HttpServletRequest request){
		return "admin/Sports/jiaocheng/jiaocheng_add";
	}
	@RequestMapping(value="/jiaocheng_edit",method=RequestMethod.GET)
	public String jiaocheng_editGet(Model model,HttpServletRequest request){
		return "admin/Sports/jiaocheng/jiaocheng_edit";
	}
	@RequestMapping(value="/jiaocheng_view",method=RequestMethod.GET)
	public String jiaocheng_viewGet(Model model,HttpServletRequest request){
		return "admin/Sports/jiaocheng/jiaocheng_view";
	}
	@RequestMapping(value="/jiaocheng",method=RequestMethod.GET)
	public String jiaochengGet(Model model,HttpServletRequest request){
		return "admin/Sports/jiaocheng/jiaocheng";
	}
	/**
	 * 行程管理
	 * xingcheng_add  行程添加
	 * xingcheng_edit 行程编辑
	 * xingcheng_view 行程详情
	 * xingcheng 行程列表
	 */
	@RequestMapping(value="/xingcheng_add",method=RequestMethod.GET)
	public String xingcheng_addGet(Model model,HttpServletRequest request){
		return "admin/Sports/xingcheng/xingcheng_add";
	}
	@RequestMapping(value="/xingcheng_edit",method=RequestMethod.GET)
	public String xingcheng_editGet(Model model,HttpServletRequest request){
		return "admin/Sports/xingcheng/xingcheng_edit";
	}
	@RequestMapping(value="/xingcheng_view",method=RequestMethod.GET)
	public String xingcheng_viewGet(Model model,HttpServletRequest request){
		return "admin/Sports/xingcheng/xingcheng_view";
	}
	@RequestMapping(value="/xingcheng",method=RequestMethod.GET)
	public String xingchengGet(Model model,HttpServletRequest request){
		return "admin/Sports/xingcheng/xingcheng";
	}
	/**
	 * 社区管理
	 * shequ_add  社区添加
	 * shequ_edit 社区编辑
	 * shequ_view 社区详情
	 * shequ 社区列表
	 */
	@RequestMapping(value="/shequ_add",method=RequestMethod.GET)
	public String shequ_addGet(Model model,HttpServletRequest request){
		return "admin/Sports/shequ/shequ_add";
	}
	@RequestMapping(value="/shequ_edit",method=RequestMethod.GET)
	public String shequ_editGet(Model model,HttpServletRequest request){
		return "admin/Sports/shequ/shequ_edit";
	}
	@RequestMapping(value="/shequ_view",method=RequestMethod.GET)
	public String shequ_viewGet(Model model,HttpServletRequest request){
		return "admin/Sports/shequ/shequ_view";
	}
	@RequestMapping(value="/shequ",method=RequestMethod.GET)
	public String shequGet(Model model,HttpServletRequest request){
		return "admin/Sports/shequ/shequ";
	}
	
}
