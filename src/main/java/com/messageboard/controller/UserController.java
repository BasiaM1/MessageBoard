package com.messageboard.controller;

import com.messageboard.entity.User;
import com.messageboard.repository.AnnouncementRepository;
import com.messageboard.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import javax.validation.Validator;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    AnnouncementRepository announcementRepository;

    @Autowired
    Validator validator;

    @RequestMapping(value = ("/register"), method = RequestMethod.GET )
    public String registerForm(Model model) {
        model.addAttribute("user", new User());
        return "userRegistration";
    }

    @RequestMapping(value = ("/register"), method = RequestMethod.POST)
    public String registred(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "userRegistration";
        }

//        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userRepository.save(user);
        return "redirect:/user/" + user.getId();
    }
}
