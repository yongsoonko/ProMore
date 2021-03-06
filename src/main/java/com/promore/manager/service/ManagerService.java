package com.promore.manager.service;

import org.springframework.web.servlet.ModelAndView;

public interface ManagerService {

	public void memberList(ModelAndView mav);

	public void memberDelete(ModelAndView mav);
	
	public void noticeWriteOk(ModelAndView mav);
	
	public void noticeList(ModelAndView mav);
	
	public void noticeUpdateOk(ModelAndView mav);
	
	public void noticeFileDownload(ModelAndView mav);
	
	public void noticeDelete(ModelAndView mav);
	
	public void reportList(ModelAndView mav);
	
	public void reportFileDownload(ModelAndView mav);
	
	public void reportStateChange(ModelAndView mav);

}
