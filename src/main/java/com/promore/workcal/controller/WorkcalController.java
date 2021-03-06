package com.promore.workcal.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.promore.member.dto.MemberDto;
import com.promore.project.service.ProjectService;
import com.promore.workcal.service.WorkcalService;

@Controller
public class WorkcalController {
	@Autowired
	@Qualifier("workcalService")
	private WorkcalService workcalService;

	@RequestMapping(value = "/workcal/get-givesche.do", method = RequestMethod.GET)
	public void getGiveSche(HttpServletRequest req, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();

		HttpSession sess = req.getSession();
		MemberDto memberDto = (MemberDto) sess.getAttribute("memberDto");
		System.out.println(memberDto);
		if (memberDto == null)
			mav.addObject("workSender", "Guest");
		else
			mav.addObject("workSender", memberDto.getMemId());
		mav.addObject("proNum", req.getParameter("proNum"));

		workcalService.getGiveSche(mav);

		resp.setHeader("Content-Type", "application/json;charset=utf-8");
		try {
			resp.getWriter().println(((JSONObject) mav.getModel().get("jsonObj")).toJSONString());
			resp.flushBuffer();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/workcal/get-takesche.do", method = RequestMethod.GET)
	public void getTakeSche(HttpServletRequest req, HttpServletResponse resp) {
		ModelAndView mav = new ModelAndView();

		HttpSession sess = req.getSession();
		MemberDto memberDto = (MemberDto) sess.getAttribute("memberDto");
		if (memberDto == null)
			mav.addObject("workReceiver", "Guest");
		else
			mav.addObject("workReceiver", memberDto.getMemId());
		mav.addObject("proNum", req.getParameter("proNum"));

		workcalService.getTakeSche(mav);

		resp.setHeader("Content-Type", "application/json;charset=utf-8");
		try {
			resp.getWriter().println(((JSONObject) mav.getModel().get("jsonObj")).toJSONString());
			resp.flushBuffer();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
