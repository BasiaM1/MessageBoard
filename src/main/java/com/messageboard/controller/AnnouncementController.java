package com.messageboard.controller;

import com.messageboard.entity.Announcement;
import com.messageboard.repository.AnnouncementRepository;
import com.messageboard.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.Validator;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/announcement")
public class AnnouncementController {

    @Autowired
    AnnouncementRepository announcementRepository;
    @Autowired
    UserRepository userRepository;


    @Autowired
    Validator validator;

    @GetMapping("/{id}")
    public void getAnnouncement(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        Announcement a = announcementRepository.findById(id).get();
        response.setContentType("mimetype : application/octet-stream");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + id + ".png\"");

        response.getOutputStream().write(a.getPicture());

    }


    @GetMapping("/add")
    public String addPrepare(Model model, @RequestParam("userId") Long userId){
        Announcement a = new Announcement();
        a.setUser(userRepository.findById(userId).get());
        model.addAttribute("announcement", a);
        return "announcementForm";
    }

    @PostMapping("/add")
    public String add(@Valid Announcement a, BindingResult result,@RequestParam("picture") MultipartFile file, @RequestParam("title") String title, @RequestParam("decription") String desc) throws IOException {

        if (result.hasErrors()) {
            return "announcementForm";
        }

        a.setTitle(title);
        a.setDecription(desc);

        Date now = new Date();
        a.setCreated(now);

        Calendar c = Calendar.getInstance();
        c.setTime(now);
        c.add(Calendar.MONTH, 3);

        Date expired = c.getTime();
        a.setExpired(expired);

        a.setPicture(file.getBytes());

        announcementRepository.save(a);

        return "redirect:/user/" + a.getUser().getId() ;
    }


}
