package kr.ac.jbnu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.jbnu.model.Member;
import kr.ac.jbnu.service.MemberService;

@Controller
public class MemberController {

	private MemberService memberService;
	
	@Autowired(required=true)
	@Qualifier(value="memberService")
	public void setMemberService(MemberService ms){
		this.memberService = ms;
	}
	
	@RequestMapping(value = "/members", method = RequestMethod.GET)
	public String listMembers(Model model) {
		model.addAttribute("member", new Member());
		model.addAttribute("listMembers", this.memberService.listMembers());
		return "member";
	}
	
	//For add and update person both
	@RequestMapping(value= "/member/add", method = RequestMethod.POST)
	public String addMember(@ModelAttribute("member") Member m){
		
		if(m.getMember_key() == 0){
			//new member, add it
			this.memberService.addMember(m);
		}else{
			//existing member, call update
			this.memberService.updateMember(m);
		}
		
		return "redirect:/members";
		
	}
	
	
	@RequestMapping("/remove/{member_key}")
    public String removeMember(@PathVariable("member_key") int memberkey){
		
        this.memberService.removeMember(memberkey);
        return "redirect:/members";
    }
 
    @RequestMapping("/edit/{member_key}")
    public String editMember(@PathVariable("member_key") int memberkey, Model model){
        model.addAttribute("member", this.memberService.getMemberById(memberkey));
        model.addAttribute("listMembers", this.memberService.listMembers());
        return "member";
    }
}
