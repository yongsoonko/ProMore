package com.promore.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	@RequestMapping(value = "/member/loginOk.do", method = RequestMethod.POST)
	public ModelAndView loginOk(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("OK");
		
		ModelAndView mav = new ModelAndView("member/loginOk");
		return mav;
	}
	
	@RequestMapping(value = "/member/register.do", method = RequestMethod.GET)
	public ModelAndView memberList(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Ok");
		
		ModelAndView mav = new ModelAndView("member/register");
		return mav;
	}
	
	
	@RequestMapping(value = "/member/forgot-password.do", method = RequestMethod.GET)
	public ModelAndView forgotPassword(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Ok");
		
		ModelAndView mav = new ModelAndView("member/forgot-password");
		return mav;
	}
	
	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("OK");
		
		ModelAndView mav = new ModelAndView("member/logout");
		return mav;
	}
}
