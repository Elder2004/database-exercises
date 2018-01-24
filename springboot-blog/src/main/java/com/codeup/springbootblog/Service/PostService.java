package com.codeup.springbootblog.Service;

import com.codeup.springbootblog.models.Post;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PostService {

        private List<Post> posts;

        public PostService() {
            this.posts = new ArrayList<>();
            createPosts();
        }

    private void createPosts() {
            save (new Post("Name A", "Description a"));
            save (new Post("Name B", "Description b"));
            save (new Post("Name C", "Description c"));
            save (new Post("Name D", "Description d"));
    }


        public void save(Post post) {
            post.setId(posts.size() + 1);
            this.posts.add(post);
        }
    public List<Post> findAll() {
        return posts;
    }

        public Post findOne(long id) {
            return posts.get((int)id - 1);
        }


    public void update(Post post) {
            posts.set ((int)post.getId() -1, post);
    }
}
