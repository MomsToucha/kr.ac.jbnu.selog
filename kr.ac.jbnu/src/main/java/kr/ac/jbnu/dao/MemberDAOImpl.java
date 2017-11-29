package kr.ac.jbnu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import kr.ac.jbnu.model.Member;

@Repository
public class MemberDAOImpl implements MemberDAO{

	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	@Override
	public void addMember(Member member) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(member);
		logger.info("Member saved successfully, Member Details="+member);
	}

	@Override
	public void updateMember(Member member) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.update(member);
		logger.info("Member updated successfully, Member Details="+ member);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Member> listMembers() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<Member> membersList = session.createQuery("from Member").list();
		for(Member p : membersList){
			logger.info("Member List::"+p);
		}
		return membersList;
	}

	@Override
	public Member getMemberById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();		
		Member member = (Member) session.load(Member.class, new Integer(id));
		logger.info("Member loaded successfully, Member details="+member);
		return member;
	}

	@Override
	public void removeMember(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Member member = (Member) session.load(Member.class, new Integer(id));
		if(null != member){
			session.delete(member);
		}
		logger.info("Member deleted successfully, Member details="+member);
	}

}
