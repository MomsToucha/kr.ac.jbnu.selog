package kr.ac.jbnu.dao;

import java.util.List;

import kr.ac.jbnu.model.Member;

public interface MemberDAO {
	
	public void addMember(Member member);
	
	public void updateMember(Member member);
	
	public List<Member> listMembers();
	
	public Member getMemberById(int id);
	
	public void removeMember(int id);
}
