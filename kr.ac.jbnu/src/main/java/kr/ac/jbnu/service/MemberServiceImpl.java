package kr.ac.jbnu.service;

import kr.ac.jbnu.dao.MemberDAO;
import kr.ac.jbnu.model.Member;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

public class MemberServiceImpl implements MemberService{
	
	private MemberDAO memberDAO;
	
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	@Transactional
	public void addMember(Member member) {
		// TODO Auto-generated method stub
		this.memberDAO.addMember(member);
	}

	@Override
	@Transactional
	public void updateMember(Member member) {
		// TODO Auto-generated method stub
		this.memberDAO.updateMember(member);
	}

	@Override
	@Transactional
	public List<Member> listMembers() {
		// TODO Auto-generated method stub
		return this.memberDAO.listMembers();
	}

	@Override
	@Transactional
	public Member getMemberById(int id) {
		// TODO Auto-generated method stub
		return this.memberDAO.getMemberById(id);
	}

	@Override
	@Transactional
	public void removeMember(int id) {
		// TODO Auto-generated method stub
		this.memberDAO.removeMember(id);
	}
	
	

}
