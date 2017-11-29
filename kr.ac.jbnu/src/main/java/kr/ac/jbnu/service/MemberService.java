package kr.ac.jbnu.service;

import java.util.List;

import kr.ac.jbnu.model.Member;

public interface MemberService {
	
	public void addMember(Member member);
	
	public void updateMember(Member member);
	
	public List<Member> listMembers();
	
	public Member getMemberById(int id);
	
	public void removeMember(int id);

}
