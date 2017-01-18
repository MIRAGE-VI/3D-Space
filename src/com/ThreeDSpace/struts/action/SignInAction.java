/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.ThreeDSpace.struts.action;

import javax.jms.Session;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import service.MyCart;
import service.MyFavorites;
import service.MyOrder;
import service.UserService;
import util.MD5_test;

import com.ThreeDSpace.struts.form.SignInForm;

import domain.User;

/** 
 * MyEclipse Struts
 * Creation date: 03-21-2016
 * 
 * XDoclet definition:
 * @struts.action path="/signIn" name="signInForm" scope="request" validate="true"
 */
public class SignInAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		SignInForm signInForm = (SignInForm) form;// TODO Auto-generated method stub
			
		String userPhoneNumber=signInForm.getUserPhoneNumber();
		String userPassword=signInForm.getUserPassword();
		String isKeepInfo=signInForm.getIsKeepInfo();
		String checkCode=signInForm.getCheckCode();
		
		UserService userService=new UserService();
		User user=new User();
		//user.setU_id(Integer.parseInt(userId));
		user.setU_phoneNumber(userPhoneNumber);
		user.setU_password(userPassword);
		
		//取出session中验证码
		String checkCode2=(String) request.getSession().getAttribute("checkCode");
		if(isKeepInfo!=null && isKeepInfo.equals("remember")){
			//用户信息记住到cookie
			//创建cookie并保存用户信息到登录用户的机器
			Cookie cookie1=new Cookie("userPhoneNumber",userPhoneNumber);
			Cookie cookie2=new Cookie("userPassword",userPassword);
			cookie1.setMaxAge(3600*24*30);
			cookie2.setMaxAge(3600*24*30);
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			
			if(checkCode!=null && checkCode.equals(checkCode2)){
				if(userService.checkUser(user)){
					//把用户信息保存到session
					request.getSession().setAttribute("SignInUser", user);
					
					if(request.getSession().getAttribute("MyCart")==null){
						//如果没有购物车，则创建购物车
						MyCart myCart=new MyCart();
						HttpSession MyCartSession=request.getSession();
						MyCartSession.setAttribute("MyCart", myCart);
						MyCartSession.setMaxInactiveInterval(-1);//设置永不过期，但关闭浏览器会消失
						if(request.getSession().getAttribute("MyFavorites")==null){
							//如果没有收藏夹，则创建收藏夹
							MyFavorites myFavorites=new MyFavorites();
							HttpSession MyFavoritesSession=request.getSession();
							MyCartSession.setAttribute("MyFavorites", myFavorites);
							MyCartSession.setMaxInactiveInterval(-1);//设置永不过期，但关闭浏览器会消失
							if(request.getSession().getAttribute("MyOrder")==null){
								//如果没有订单，则创建订单
								MyOrder myOrder=new MyOrder();
								HttpSession myOrderSession=request.getSession();
								MyCartSession.setAttribute("MyOrder", myOrder);
								MyCartSession.setMaxInactiveInterval(-1);//设置永不过期，但关闭浏览器会消失
							}
						}
					}
					return mapping.findForward("SignInOk");
				}else{
					request.setAttribute("ErrInfo", "Wrong Id Or Password!");
					return mapping.findForward("SignInErr");
				}	
			}else{
				request.setAttribute("ErrInfo", "Wrong CheckCode!");
				return mapping.findForward("SignInErr");
			}
		}else{
			//不记住用户信息
			if(checkCode!=null && checkCode.equals(checkCode2)){
				if(userService.checkUser(user)){
					//把用户信息保存到session
					request.getSession().setAttribute("SignInUser", user);
					
					if(request.getSession().getAttribute("MyCart")==null){
						//如果没有购物车，则创建购物车
						MyCart myCart=new MyCart();
						HttpSession MyCartSession=request.getSession();
						MyCartSession.setAttribute("MyCart", myCart);
						MyCartSession.setMaxInactiveInterval(-1);//设置永不过期，但关闭浏览器会消失
						if(request.getSession().getAttribute("MyFavorites")==null){
							//如果没有收藏夹，则创建收藏夹
							MyFavorites myFavorites=new MyFavorites();
							HttpSession MyFavoritesSession=request.getSession();
							MyCartSession.setAttribute("MyFavorites", myFavorites);
							MyCartSession.setMaxInactiveInterval(-1);//设置永不过期，但关闭浏览器会消失
							if(request.getSession().getAttribute("MyOrder")==null){
								//如果没有订单，则创建订单
								MyOrder myOrder=new MyOrder();
								HttpSession myOrderSession=request.getSession();
								MyCartSession.setAttribute("MyOrder", myOrder);
								MyCartSession.setMaxInactiveInterval(-1);//设置永不过期，但关闭浏览器会消失
							}
						}
					}
					return mapping.findForward("SignInOk");
				}else{
					request.setAttribute("ErrInfo", "Wrong Id Or Password!");
					return mapping.findForward("SignInErr");
				}	
			}else{
				request.setAttribute("ErrInfo", "Wrong CheckCode!");
				return mapping.findForward("SignInErr");
			}
		}		
	}
}