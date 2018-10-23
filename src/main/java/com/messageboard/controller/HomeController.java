package com.messageboard.controller;

import com.messageboard.entity.Announcement;
import com.messageboard.entity.User;
import com.messageboard.repository.AnnouncementRepository;
import com.messageboard.repository.CommentRepository;
import com.messageboard.repository.UserRepository;
import com.messageboard.utils.AnnouncementByDateComparator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    UserRepository userRepository;
    @Autowired
    AnnouncementRepository announcementRepository;
    @Autowired
    CommentRepository commentRepository;

    @RequestMapping({"/home", "/"})
    public String welcomePage(Model model) {
        List<User> users = userRepository.findAll();
        model.addAttribute("allUsers", users);
        List<Announcement> userAnnouncements = announcementRepository.findAll();

        Collections.sort(userAnnouncements, new AnnouncementByDateComparator());

        model.addAttribute("announcements", userAnnouncements);
        return "index";
    }


}