package com.promore.member.dao;

import com.promore.member.dto.MemberDto;

public interface MemberDao {
	
	public MemberDto loginOk(String memId, String memPassword);
		
	public String getPw(String memId, String memEmail);
	
	public MemberDto memberSelect(int memNum);
	
	public int memberUpdate(MemberDto memberDto);
	
	public int memberRegister(MemberDto member);

	public int memberDelete(int memNum);
	
	public MemberDto snsLoginOk(String memEmail);
}
