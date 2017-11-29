package kr.ac.jbnu.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import kr.ac.jbnu.dao.PostDAO;
import kr.ac.jbnu.model.Post;

public class PostServiceImpl implements PostService{

	private PostDAO postDAO;
	
	public void setPostDAO(PostDAO postDAO) {
		this.postDAO = postDAO;
	}
	
	@Override
	@Transactional
	public void addPost(Post post) {
		// TODO Auto-generated method stub
		this.postDAO.addPost(post);
	}

	@Override
	@Transactional
	public void updatePost(Post post) {
		// TODO Auto-generated method stub
		this.postDAO.updatePost(post);
	}

	@Override
	@Transactional
	public List<Post> listPosts() {
		// TODO Auto-generated method stub
		return this.postDAO.listPosts();
	}

	@Override
	@Transactional
	public Post getPostById(int id) {
		// TODO Auto-generated method stub
		return this.postDAO.getPostById(id);
	}

	@Override
	@Transactional
	public void removePost(int id) {
		// TODO Auto-generated method stub
		this.postDAO.removePost(id);
	}

}
