package com.promore.project.service;

import org.springframework.web.servlet.ModelAndView;

public interface ProjectService {
	
	public void projectList(ModelAndView mav);


	void projectWrite(ModelAndView mav, String memid);


	public void projectCnt(ModelAndView mav, String id);



	public void projectUpdateOk(ModelAndView mav);


	public void projectDeleteOk(ModelAndView mav);


	public void projectApplyOk(ModelAndView mav, String aplMemId);


	public void projectApplyAdd(ModelAndView mav, String memId);


	public void projectStateUpdateOk(ModelAndView mav);



	public void projectSelect(ModelAndView mav, String aplMemId);


	public void projectRead(ModelAndView mav, String aplMemId);


}
