package kr.ac.jbnu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Member")
public class Member {
	
	@Id
	@Column(name="member_key")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int member_key;
	
	@Column(name="member_name")
	private String member_name;
	
	@Column(name="birthday")
	private String birthday;
	
	@Column(name="email_address")
	private String email_address;
	
	@Column(name="password")
	private String password;
	
	public int getMember_key() {
		return member_key;
	}
	
	public void setMember_key(int key) {
		this.member_key = key;
	}
	
	public String getMember_name() {
		return member_name;
	}
	
	public void getMember_name(String name) {
		this.member_name = name;
	}
	
	public String getBirthday() {
		return birthday;
	}
	
	public void setBirthday(String birth) {
		this.birthday = birth;
	}
	
	public String getEmailAddress() {
		return email_address;
	}
	
	public void setEmailAddress(String email) {
		this.email_address= email;
	}
	
	public String getPassword( ) {
		return password;
	}
	
	public void setPassword(String pwd) {
		this.password = pwd;
	}
	
	@Override
	public String toString() {
		return "Member's member_key =" + member_key + "birthday" + birthday + "member_name" + member_name + "email_address" + email_address;
	}
}
