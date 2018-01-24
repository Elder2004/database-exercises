package com.codeup.springbootblog.controllers;

import com.codeup.springbootblog.Service.PostService;
import com.codeup.springbootblog.models.Post;
import org.springframework.stereotype.Controller;
import java.util.List;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@SuppressWarnings("SpringJavaConstructorAutowiringInspection")
@Controller

public class PostsController {

    private final PostService postService;

    public PostsController(PostService postService) {
        this.postService = postService;
    }



    public String viewAllPost(Model showAndModel){

        List<Post> posts = this.postService.findAll ();
        showAndModel.addAttribute ("posts", posts);

        return "posts/index";
    }


    @RequestMapping("/posts/{id}")
    public String show(@PathVariable long id, Model showAndModel) {
        Post post = postService.findOne(id);

        showAndModel.addAttribute("post", post);

        return "posts/show";
    }

    @RequestMapping("/posts/create")
    public String showCreateForm(Model showModel) {
        showModel.addAttribute("post", new Post());
        return "posts/create";
    }

    @PostMapping("/posts/create")
    public String createPost(@ModelAttribute Post post) {
        postService.save(post);
        return "redirect:/posts";
    }

    @GetMapping("/posts/{id}/edit")
    public String showEditForm(@PathVariable long id, Model showAndModel) {
        Post post = postService.findOne(id);
        showAndModel.addAttribute("post", post);
        return "posts/edit";
    }

    @PostMapping("/posts/edit")
    public String updatePost(@ModelAttribute Post post) {
        postService.update(post);
        return "redirect:/posts";
    }
}