package kr.ac.jbnu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.jbnu.model.Post;
import kr.ac.jbnu.service.PostService;

@Controller
public class PostController {

	private PostService postService;
	
	@Autowired(required=true)
	@Qualifier(value="postService")
	public void setPostService(PostService ps){
		this.postService = ps;
	}
	
	@RequestMapping(value = "/posts", method = RequestMethod.GET)
	public String listPosts(Model model) {
		model.addAttribute("post", new Post());
		model.addAttribute("listPosts", this.postService.listPosts());
		return "post";
	}
	
	//For add and update person both
	@RequestMapping(value= "/post/add", method = RequestMethod.POST)
	public String addPost(@ModelAttribute("post") Post p){
		
		if(p.getPost_key() == 0){
			//new member, add it
			this.postService.addPost(p);
		}else{
			//existing member, call update
			this.postService.updatePost(p);
		}
		
		return "redirect:/posts";
		
	}
	
	
	@RequestMapping("/remove_post/{post_key}")
    public String removePost(@PathVariable("post_key") int postkey){
		
        this.postService.removePost(postkey);
        return "redirect:/posts";
    }
 
    @RequestMapping("/edit_post/{post_key}")
    public String editPerson(@PathVariable("post_key") int postkey, Model model){
        model.addAttribute("post", this.postService.getPostById(postkey));
        model.addAttribute("listPosts", this.postService.listPosts());
        return "post";
    }
}
