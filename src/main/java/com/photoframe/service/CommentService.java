package com.photoframe.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Comment;
import com.photoframe.repository.CommentRepository;

@Service
public class CommentService {
	@Autowired
	private CommentRepository commentRepository;

	public Comment createComment(Comment comment) {
		comment.setDate(new Date());
		return commentRepository.save(comment);
	}

	public List<Comment> getAllComment() {
		return commentRepository.findAll();
	}

	public List<Comment> getCommentByProductId(String productId) {
		List<Comment> list = getAllComment();
		List<Comment> listReturn = new ArrayList<>();
		for (Comment c : list) {
			if (c.getProduct().getProductID().equals(Long.parseLong(productId))) {
				listReturn.add(c);
			}
		}
		return listReturn;
	}
}
